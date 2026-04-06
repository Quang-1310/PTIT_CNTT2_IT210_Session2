<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<html>
<head>
    <title>Danh sách đơn hàng</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="container mt-4">

<div class="alert alert-info">
    <h5>Xin chào, <strong>${sessionScope.loggedUser}</strong>!
        Vai trò: ${sessionScope.role}
    </h5>
    <a href="<c:url value='/logout'/>" class="btn btn-sm btn-danger">Đăng xuất</a>
</div>

<h3>Danh sách đơn hàng</h3>
<table class="table table-bordered">
    <thead class="thead-light">
    <tr>
        <th>Mã đơn</th>
        <th>Sản phẩm</th>
        <th>Tổng tiền</th>
        <th>Ngày đặt</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="order" items="${orderList}">
        <tr>
            <td>${order.orderId}</td>
            <td>${order.productName}</td>
            <td>
                <fmt:formatNumber value="${order.price}" type="currency" />
            </td>
            <td>
                <fmt:formatDate value="${order.date}" pattern="dd/MM/yyyy" />
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<div class="mt-5 p-3 bg-light">
    <%-- Đọc từ Application Scope --%>
    <p>Tổng lượt xem đơn hàng toàn hệ thống: <strong>${applicationScope.totalViewCount}</strong></p>
</div>

</body>
</html>