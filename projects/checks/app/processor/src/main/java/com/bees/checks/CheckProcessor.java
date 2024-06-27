package com.bees.checks;

public class CheckProcessor {

	public static void main(String[] args) {

        try {
            CheckProcessorJob.run();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

	}


}
