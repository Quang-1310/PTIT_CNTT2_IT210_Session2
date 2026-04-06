<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 6/4/26
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        .card { border: 2px solid #333; padding: 20px; width: 400px; border-radius: 10px; margin-top: 20px; }
        .error { color: red; font-weight: bold; padding: 10px; border: 1px solid red; display: inline-block; }
        .rank-gioi { color: green; font-weight: bold; }
        .rank-kha { color: blue; font-weight: bold; }
        .rank-trungbinh { color: orange; font-weight: bold; }
        .rank-canhbao { color: red; font-weight: bold; text-transform: uppercase; }
    </style>
</head>
<body>

<h2>Tra cứu thẻ sinh viên</h2>

<c:if test="${not empty errorMessage}">
    <div class="error">
        <c:out value="${errorMessage}" />
    </div>
</c:if>

<c:if test="${not empty studentName}">
    <div class="card">
        <h3>THẺ SINH VIÊN</h3>
        <p><strong>Mã số:</strong> ${param.msv}</p>
        <p><strong>Họ tên:</strong> <c:out value="${studentName}" /></p>
        <p><strong>Khoa:</strong> ${faculty}</p>
        <p><strong>Năm học:</strong> ${year}</p>
        <p><strong>GPA:</strong> ${gpa}</p>

        <p><strong>Xếp loại:</strong>
            <c:choose>
                <c:when test="${gpa >= 8.0}">
                    <span class="rank-gioi">Giỏi</span>
                </c:when>
                <c:when test="${gpa >= 6.5}">
                    <span class="rank-kha">Khá</span>
                </c:when>
                <c:when test="${gpa >= 5.0}">
                    <span class="rank-trungbinh">Trung bình</span>
                </c:when>
                <c:otherwise>
                    <span class="rank-canhbao">Cảnh báo học vụ</span>
                </c:otherwise>
            </c:choose>
        </p>
    </div>
</c:if>

<br>
<a href="${pageContext.request.contextPath}/student-card">Tra cứu sinh viên khác</a>

</body>
</html>