<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Chỉnh sửa Danh mục</title>
</head>
<body>
    <h2>Chỉnh sửa Danh mục</h2>
    <form action="${pageContext.request.contextPath}/admin/categories/save" method="post" class="w-50">
        <input type="hidden" name="categoryId" value="${category.categoryId}"/>
        <div class="mb-3">
            <label class="form-label">Tên danh mục:</label>
            <input type="text" name="categoryname" value="${category.categoryname}" class="form-control" required>
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