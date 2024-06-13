package com.bees.streaming.processor.init;

import org.apache.flink.api.common.state.ValueState;
import org.apache.flink.api.common.state.ValueStateDescriptor;
import org.apache.flink.streaming.api.datastream.DataStream;
import org.apache.flink.streaming.api.environment.StreamExecutionEnvironment;
import org.apache.flink.streaming.api.functions.KeyedProcessFunction;
import org.apache.flink.util.Collector;
import org.apache.flink.walkthrough.common.entity.Alert;
import org.apache.flink.walkthrough.common.entity.Transaction;

import org.apache.flink.walkthrough.common.sink.AlertSink;
import org.apache.flink.walkthrough.common.source.TransactionSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import static javax.management.timer.Timer.ONE_MINUTE;

public class FraudDetectionJob {

    private static final Logger LOGGER = LoggerFactory.getLogger(FraudDetectionJob.class);

    public static void run() throws Exception {
        LOGGER.info("FraudDetectionJob started");

        StreamExecutionEnvironment env = StreamExecutionEnvironment.getExecutionEnvironment();

        DataStream<Transaction> transactions = env
                .addSource(new TransactionSource())
                .name("transactions");

        DataStream<Alert> alerts = transactions
                .keyBy(Transaction::getAccountId)
                .process(new FraudDetector())
                .name("fraud-detector");
        alerts
                .addSink(new AlertSink())
                .name("send-alerts");

        env.execute("Fraud Detection Job");
    }


    static class FraudDetector extends KeyedProcessFunction<Long, Transaction, Alert> {
        private static final Logger LOGGER = LoggerFactory.getLogger(FraudDetector.class);

        private static final int LARGE_AMOUNT = 100;
        private static final int SMALL_AMOUNT = 1;
        private static final long serialVersionUID = 1L;

        private transient ValueState<Boolean> flagState;
        private transient ValueState<Long> timerState;

        @Override
        public void processElement(Transaction transaction, Context context, Collector<Alert> collector) throws Exception {
            LOGGER.info("Processing transaction: {}", transaction);
            ValueStateDescriptor<Boolean> flagDescriptor = new ValueStateDescriptor<>("flag", Boolean.class);
            ValueStateDescriptor<Long> timerDescriptor = new ValueStateDescriptor<>("timer", Long.class);

            flagState = getRuntimeContext().getState(flagDescriptor);
            timerState = getRuntimeContext().getState(timerDescriptor);

            var lastTransactionWasSmall = flagState.value();

            if (lastTransactionWasSmall != null) {
                if (transaction.getAmount() > LARGE_AMOUNT) {
                    Alert alert = new Alert();
                    alert.setId(transaction.getAccountId());
                    collector.collect(alert);
                    LOGGER.info("Alert {} a fraudulent transcation {}", alert, transaction);
                }
                cleanUp(context);
            }
            if (transaction.getAmount() < SMALL_AMOUNT) {
                long timer = context.timerService().currentProcessingTime() + ONE_MINUTE;
                context.timerService().registerProcessingTimeTimer(timer);
                timerState.update(timer);
                flagState.update(true);
            }

        }

        private void cleanUp(Context context) throws Exception {
            Long timer = timerState.value();
            context.timerService().deleteProcessingTimeTimer(timer);
            timerState.clear();
            flagState.clear();
        }

        @Override
        public void onTimer(long timestamp, OnTimerContext context, Collector<Alert> out) throws Exception {
            timerState.clear();
            flagState.clear();
        }
    }

}
