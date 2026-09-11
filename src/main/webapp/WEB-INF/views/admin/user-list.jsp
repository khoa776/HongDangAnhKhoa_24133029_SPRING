<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Quản lý User</title>
</head>
<body>
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h2>Danh sách Người dùng</h2>
        <a href="${pageContext.request.contextPath}/admin/users/add" class="btn btn-primary">+ Thêm mới User</a>
    </div>

    <!-- Form Tìm kiếm -->
    <form action="${pageContext.request.contextPath}/admin/users" method="get" class="row g-3 mb-4">
        <div class="col-auto">
            <input type="text" name="keyword" value="${keyword}" class="form-control" placeholder="Nhập tên/username...">
        </div>
        <div class="col-auto">
            <button type="submit" class="btn btn-secondary">Tìm kiếm</button>
        </div>
    </form>

    <!-- Bảng Dữ liệu -->
    <table class="table table-bordered table-striped align-middle">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Họ tên</th>
                <th>Email</th>
                <th>Vai trò</th>
                <th>Trạng thái</th>
                <th>Thao tác</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${userPage.content}" var="u">
                <tr>
                    <td>${u.id}</td>
                    <td>${u.username}</td>
                    <td>${u.fullname}</td>
                    <td>${u.email}</td>
                    <td>
                        <span class="badge ${u.roleid == 1 ? 'bg-danger' : 'bg-info'}">
                            ${u.roleid == 1 ? 'Admin' : 'User'}
                        </span>
                    </td>
                    <td>
                        <span class="badge ${u.status == 1 ? 'bg-success' : 'bg-warning'}">
                            ${u.status == 1 ? 'Hoạt động' : 'Khóa'}
                        </span>
                    </td>
                    <td>
                        <a href="${pageContext.request.contextPath}/admin/users/edit/${u.id}" class="btn btn-warning btn-sm">Sửa</a>
                        <a href="${pageContext.request.contextPath}/admin/users/delete/${u.id}" class="btn btn-danger btn-sm" onclick="return confirm('Xóa người dùng này?')">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <!-- Phân trang -->
    <c:if test="${totalPages > 1}">
        <nav>
            <ul class="pagination">
                <c:forEach begin="0" end="${totalPages - 1}" var="i">
                    <li class="page-item ${currentPage == i ? 'active' : ''}">
                        <a class="page-link" href="${pageContext.request.contextPath}/admin/users?page=${i}&keyword=${keyword}">${i + 1}</a>
                    </li>
                </c:forEach>
            </ul>
        </nav>
    </c:if>
</body>
</html>