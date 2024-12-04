<%@ page import="java.util.List" %>
<%@ page import="com.example.baitapbuoi2.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>zzzzxzzzzzzzzzzzzzzz
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Danh sách khach hang</title>
</head>
<body>
<%
List<Customer> listKhachHang = new ArrayList<>();

        listKhachHang.add(new Customer("Nguyen Van A", "1990-01-01", "0123456789", "https://tse1.mm.bing.net/th?id=OIP.dVsLJBA7t7zZ5a9AMZqEPwHaHa&pid=Api&P=0&h=220"));
        listKhachHang.add(new Customer("Nguyen Van B", "1990-01-01", "0123456789", "https://tse1.mm.bing.net/th?id=OIP.dVsLJBA7t7zZ5a9AMZqEPwHaHa&pid=Api&P=0&h=220"));
        listKhachHang.add(new Customer("Nguyen Van C", "1990-01-01", "0123456789", "https://tse1.mm.bing.net/th?id=OIP.dVsLJBA7t7zZ5a9AMZqEPwHaHa&pid=Api&P=0&h=220"));
        request.setAttribute("listCustomer", listKhachHang);
%>
<h1>Danh sach khach hang</h1>
<table border=1>
    <tr>
        <td>Ho va ten</td>
        <td>Ngay sinh</td>
        <td>Dia chi</td>
        <td>Anh</td>
    </tr>
    <c:forEach var="customer" items="${listCustomer}">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.dateOfBirth}</td>
            <td>${customer.address}</td>
            <td><image style="width: 100px;height: 80px" src="${customer.urlImage}"></image></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>