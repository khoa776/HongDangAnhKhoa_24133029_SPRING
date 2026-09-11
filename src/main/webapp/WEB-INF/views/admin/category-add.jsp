<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Thêm Danh mục</title>
  </head>
  <body>
    <h2>Thêm Danh mục mới</h2>
    <!-- Bổ sung enctype="multipart/form-data" để hỗ trợ gửi file -->
    <form
      action="${pageContext.request.contextPath}/admin/categories/save"
      method="post"
      enctype="multipart/form-data"
      class="w-50"
    >
      <div class="mb-3">
        <label class="form-label">Tên danh mục:</label>
        <input type="text" name="categoryname" class="form-control" required />
      </div>

      <!-- Bổ sung input chọn file ảnh -->
      <div class="mb-3">
        <label class="form-label">Hình ảnh danh mục:</label>
        <input
          type="file"
          name="imageFile"
          accept="image/*"
          class="form-control"
        />
      </div>

      <div class="mb-3">
        <label class="form-label">Trạng thái:</label>
        <select name="status" class="form-select">
          <option value="1">Hoạt động</option>
          <option value="0">Khóa</option>
        </select>
      </div>

      <button type="submit" class="btn btn-success">Lưu thông tin</button>
      <a
        href="${pageContext.request.contextPath}/admin/categories"
        class="btn btn-secondary"
        >Hủy</a
      >
    </form>
  </body>
</html>
