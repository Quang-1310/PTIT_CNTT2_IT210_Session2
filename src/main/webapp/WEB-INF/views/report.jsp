<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- Khai báo thư viện JSTL --%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!doctype html>
<html lang="en">
<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <h1><c:out value="${reportTitle}" /></h1>
    <div class="text-center">
       <table class="table table-header">
           <tr>
               <th>STT</th>
               <th>Họ tên</th>
               <th>Điểm</th>
               <th>Xếp loại</th>
           </tr>
           <c:forEach var="sv" items="${studentList}" varStatus="loop">
               <tr>
                   <td>${loop.index + 1}</td>

                   <td><c:out value="${sv.studentName}" /></td>

                   <td>${sv.score}</td>

                   <td>
                       <c:choose>
                           <c:when test="${sv.score >= 90}">Xuất sắc</c:when>
                           <c:when test="${sv.score >= 80}">Giỏi</c:when>
                           <c:when test="${sv.score >= 70}">Khá</c:when>
                           <c:when test="${sv.score >= 60}">Trung bình khá</c:when>
                           <c:when test="${sv.score >= 50}">Trung bình</c:when>
                           <c:otherwise>Yếu</c:otherwise>
                       </c:choose>
                   </td>
               </tr>
           </c:forEach>
       </table>
    </div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>