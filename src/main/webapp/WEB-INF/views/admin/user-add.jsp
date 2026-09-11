<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Thêm User</title>
  </head>
  <body>
    <h2>Thêm Người dùng mới</h2>
    <form
      action="${pageContext.request.contextPath}/admin/users/save"
      method="post"
      class="w-50"
    >
      <div class="mb-3">
        <label class="form-label">Username:</label>
        <input type="text" name="username" class="form-control" required />
      </div>
      <div class="mb-3">
        <label class="form-label">Mật khẩu:</label>
        <input type="password" name="password" class="form-control" required />
      </div>
      <div class="mb-3">
        <label class="form-label">Họ tên:</label>
        <input type="text" name="fullname" class="form-control" />
      </div>
      <div class="mb-3">
        <label class="form-label">Email:</label>
        <input type="email" name="email" class="form-control" />
      </div>
      <div class="mb-3">
        <label class="form-label">Vai trò:</label>
        <select name="roleid" class="form-select">
          <option value="2">User</option>
          <option value="1">Admin</option>
        </select>
      </div>
      <div class="mb-3">
        <label class="form-label">Trạng thái:</label>
        <select name="status" class="form-select">
          <option value="1">Hoạt động</option>
          <option value="0">Khóa</option>
        </select>
      </div>
      <button type="submit" class="btn btn-success">Lưu người dùng</button>
      <a
        href="${pageContext.request.contextPath}/admin/users"
        class="btn btn-secondary"
        >Hủy</a
      >
    </form>
  </body>
</html>
