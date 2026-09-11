<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Chỉnh sửa Danh mục</title>
</head>
<body>
    <h2>Chỉnh sửa Danh mục</h2>
    <!-- Thêm enctype="multipart/form-data" để truyền file lên server -->
    <form action="${pageContext.request.contextPath}/admin/categories/save" method="post" enctype="multipart/form-data" class="w-50">
        <input type="hidden" name="categoryId" value="${category.categoryId}"/>
        
        <div class="mb-3">
            <label class="form-label">Tên danh mục:</label>
            <input type="text" name="categoryname" value="${category.categoryname}" class="form-control" required>
        </div>

        <!-- Bổ sung phần xem trước ảnh cũ và chọn ảnh mới -->
        <div class="mb-3">
            <label class="form-label">Hình ảnh hiện tại:</label><br/>
            <c:choose>
                <c:when test="${not empty category.images && category.images.startsWith('http')}">
                    <img src="${category.images}" height="80" class="rounded mb-2" style="object-fit: cover;" />
                </c:when>
                <c:when test="${not empty category.images}">
                    <img src="${pageContext.request.contextPath}/image/${category.images}" height="80" class="rounded mb-2" style="object-fit: cover;" />
                </c:when>
                <c:otherwise>
                    <span class="text-muted d-block mb-2">Chưa có ảnh</span>
                </c:otherwise>
            </c:choose>
            
            <input type="file" name="imageFile" accept="image/*" class="form-control">
            <small class="text-muted">Bỏ trống nếu không muốn đổi ảnh mới.</small>
        </div>

        <div class="mb-3">
            <label class="form-label">Trạng thái:</label>
            <select name="status" class="form-select">
                <option value="1" ${category.status == 1 ? 'selected' : ''}>Hoạt động</option>
                <option value="0" ${category.status == 0 ? 'selected' : ''}>Khóa</option>
            </select>
        </div>

        <button type="submit" class="btn btn-warning">Cập nhật</button>
        <a href="${pageContext.request.contextPath}/admin/categories" class="btn btn-secondary">Hủy</a>
    </form>
</body>
</html>