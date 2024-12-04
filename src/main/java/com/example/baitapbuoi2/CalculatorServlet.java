package com.example.baitapbuoi2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/resultCalculator")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        double number1 = Double.parseDouble(req.getParameter("number1"));
        double number2 = Double.parseDouble(req.getParameter("number2"));
        String operator = req.getParameter("operator");
        Calculator cal = new Calculator();
        double result = cal.calculate(number1, number2, operator);
        resp.getWriter().write("Kết quả là : " +result);
    }
}
