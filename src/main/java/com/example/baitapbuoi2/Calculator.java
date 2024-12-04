package com.example.baitapbuoi2;

public class Calculator {
    public double calculate(double number1, double number2, String operator) {
        double result = 0;
        try {
            switch (operator) {
                case "add":
                    result = (number1 + number2);
                    break;
                case "subtract":
                    result = (number1 - number2);
                    break;
                case "multiply":
                    result = (number1 * number2);
                    break;
                case "divide":
                    if (number2 == 0) {
                        throw new ArithmeticException("Cannot divide by zero");
                    }
                    result = (number1 / number2);
                    break;
                default:
                    throw new IllegalArgumentException("Unsupported operator: " + operator);
            }
        } catch (ArithmeticException e) {
            System.err.println("Error: " + e.getMessage());
        } catch (IllegalArgumentException e) {
            System.err.println("Error: " + e.getMessage());
        }
        return result;
    }
}
