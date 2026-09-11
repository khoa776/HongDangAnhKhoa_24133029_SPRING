<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Chỉnh sửa User</title>
</head>
<body>
    <h2>Chỉnh sửa Người dùng</h2>
    <form action="${pageContext.request.contextPath}/admin/users/save" method="post" class="w-50">
        <input type="hidden" name="id" value="${user.id}"/>
        <div class="mb-3">
            <label class="form-label">Username:</label>
            <input type="text" name="username" value="${user.username}" class="form-control" readonly>
        </div>
        <div class="mb-3">
            <label class="form-label">Mật khẩu mới (bỏ trống nếu giữ nguyên):</label>
            <input type="password" name="password" value="${user.password}" class="form-control" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Họ tên:</label>
            <input type="text" name="fullname" value="${user.fullname}" class="form-control">
        </div>
        <div class="mb-3">
            <label class="form-label">Email:</label>
            <input type="email" name="email" value="${user.email}" class="form-control">
        </div>
        <div class="mb-3">
            <label class="form-label">Vai trò:</label>
            <select name="roleid" class="form-select">
                <option value="2" ${user.roleid == 2 ? 'selected' : ''}>User</option>
                <option value="1" ${user.roleid == 1 ? 'selected' : ''}>Admin</option>
            </select>
        </div>
        <div class="mb-3">
            <label class="form-label">Trạng thái:</label>
            <select name="status" class="form-select">
                <option value="1" ${user.status == 1 ? 'selected' : ''}>Hoạt động</option>
                <option value="0" ${user.status == 0 ? 'selected' : ''}>Khóa</option>
            </select>
        </div>
        <button type="submit" class="btn btn-warning">Cập nhật</button>
        <a href="${pageContext.request.contextPath}/admin/users" class="btn btn-secondary">Hủy</a>
    </form>
</body>
</html>