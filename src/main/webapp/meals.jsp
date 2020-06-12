<%--
  Created by IntelliJ IDEA.
  User: Serafim
  Date: 11.06.2020
  Time: 22:39
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
<table border="1">
    <caption>Примчики пищки</caption>
    <tr>
        <td>Год</td>
        <td>Месяц</td>
        <td>День</td>
        <td>Час</td>
        <td>Минута</td>
        <td>Описание</td>
        <td>Калории</td>
    </tr>

    <c:forEach var="num" items="${mealsTo}">
        <c:if test="${num.excess}">
            <tr style="color: red">
        </c:if>
        <c:if test="${!num.excess}">
            <tr style="color: green">
        </c:if>
            <td>${num.year}</td>
            <td>${num.month}</td>
            <td>${num.day}</td>
            <td>${num.hours}</td>
            <td>${num.minutes}</td>
            <td>${num.description}</td>
            <td>${num.calories}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
