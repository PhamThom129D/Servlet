<%--
  Created by IntelliJ IDEA.
  User: T14
  Date: 03/12/2024
  Time: 3:46 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ket qua tinh toan</title>
</head>
<body>
<%
    int number1 = Integer.parseInt(request.getParameter("number1"));
    int number2 = Integer.parseInt(request.getParameter("number2"));
    String operator = request.getParameter("operator");
    int result = 0;
//if (operator.equals("add")) {
//    result = number1 + number2;
//} else if (operator.equals("subtract")) {
//    result = number1 - number2;
//} else if (operator.equals("multiply")) {
//    result = number1 * number2;
//} else if (operator.equals("divide")) {
//    result = number1 / number2;
//}
    request.setAttribute("result", result);
    request.setAttribute("number1", number1);
    request.setAttribute("number2", number2);
    request.setAttribute("operator", operator);

%>
<c:choose>
    <c:when test="${operator.equals('add')}">
        <c:set var="result" value="${number1 + number2}"/>
    </c:when>
    <c:when test="${operator.equals('subtract')}">
        <c:set var="result" value="${number1 - number2}"/>
    </c:when>
    <c:when test="${operator.equals('multiply')}">
        <c:set var="result" value="${number1 * number2}"/>
    </c:when>
    <c:when test="${operator.equals('divide')}">
        <c:set var="result" value="${number1 / number2}"/>
    </c:when>
</c:choose>
<h1>Result: ${result}</h1>
</body>
</html>
