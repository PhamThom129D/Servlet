<%--
  Created by IntelliJ IDEA.
  User: T14
  Date: 03/12/2024
  Time: 3:38 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ung dung tinh toan su dung servlet</title>
</head>
<body>
<h1>Ung dung tinh toan</h1>

<form action="resultCalculator" method="post">
    <div>
        <label>So thu nhat:</label>
        <input type="number" name="number1" min="0" required>
    </div>
    <div>
        <label>So thu hai:</label>
        <input type="number" name="number2" min="0" required>
    </div>
    <div>
        <label>Chon phep toan:</label>
        <select name="operator">
            <option value="add">+</option>
            <option value="subtract">-</option>
            <option value="multiply">*</option>
            <option value="divide">/</option>
        </select>
    </div>
    <div>
        <button type="submit">Tinh</button>
    </div>
</form>
</body>
</html>
