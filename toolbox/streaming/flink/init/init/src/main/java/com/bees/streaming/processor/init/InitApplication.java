package com.bees.streaming.processor.init;

//import org.springframework.boot.SpringApplication;
//import org.springframework.boot.autoconfigure.SpringBootApplication;

//@SpringBootApplication
public class InitApplication {

	public static void main(String[] args) {

        try {
            FraudDetectionJob.run();
			//SpringApplication.run(InitApplication.class, args);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

	}


}
