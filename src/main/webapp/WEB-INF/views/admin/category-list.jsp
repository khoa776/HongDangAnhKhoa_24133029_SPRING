<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Quản lý Category</title>
</head>
<body>
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h2>Danh sách Danh mục</h2>
        <a href="${pageContext.request.contextPath}/admin/categories/add" class="btn btn-primary">+ Thêm mới Category</a>
    </div>

    <form action="${pageContext.request.contextPath}/admin/categories" method="get" class="row g-3 mb-4">
        <div class="col-auto">
            <input type="text" name="keyword" value="${keyword}" class="form-control" placeholder="Nhập tên danh mục...">
        </div>
        <div class="col-auto">
            <button type="submit" class="btn btn-secondary">Tìm kiếm</button>
        </div>
    </form>

    <table class="table table-bordered table-striped align-middle">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Tên Danh mục</th>
                <th>Hình ảnh</th>
                <th>Trạng thái</th>
                <th>Thao tác</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${categoryPage.content}" var="cat">
                <tr>
                    <td>${cat.categoryId}</td>
                    <td>${cat.categoryname}</td>
                    <td>
                        <c:choose>
                            <c:when test="${not empty cat.images && cat.images.startsWith('http')}">
                                <img src="${cat.images}" height="50" width="70" style="object-fit: cover;" class="rounded" />
                            </c:when>
                            <c:when test="${not empty cat.images}">
                                <img src="${pageContext.request.contextPath}/image/${cat.images}" height="50" width="70" style="object-fit: cover;" class="rounded" />
                            </c:when>
                            <c:otherwise>
                                <span class="text-muted">Không có ảnh</span>
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td>
                        <span class="badge ${cat.status == 1 ? 'bg-success' : 'bg-danger'}">
                            ${cat.status == 1 ? 'Hoạt động' : 'Khóa'}
                        </span>
                    </td>
                    <td>
                        <a href="${pageContext.request.contextPath}/admin/categories/edit/${cat.categoryId}" class="btn btn-warning btn-sm">Sửa</a>
                        <a href="${pageContext.request.contextPath}/admin/categories/delete/${cat.categoryId}" class="btn btn-danger btn-sm" onclick="return confirm('Xóa danh mục này?')">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <c:if test="${totalPages > 1}">
        <nav>
            <ul class="pagination">
                <c:forEach begin="0" end="${totalPages - 1}" var="i">
                    <li class="page-item ${currentPage == i ? 'active' : ''}">
                        <a class="page-link" href="${pageContext.request.contextPath}/admin/categories?page=${i}&keyword=${keyword}">${i + 1}</a>
                    </li>
                </c:forEach>
            </ul>
        </nav>
    </c:if>
</body>
</html>