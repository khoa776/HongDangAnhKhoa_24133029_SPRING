<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta charset="UTF-8" />
    <title><sitemesh:write property="title"/></title>
    <!-- Bootstrap 5 CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <sitemesh:write property="head" />
  </head>
  <body>
    <!-- Navbar Admin -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">ADMIN PORTAL</a>
        <div class="collapse navbar-collapse">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a
                class="nav-link"
                href="${pageContext.request.contextPath}/admin/categories"
                >Quản lý Category</a
              >
            </li>
            <li class="nav-item">
              <a
                class="nav-link"
                href="${pageContext.request.contextPath}/admin/users"
                >Quản lý User</a
              >
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Nơi nhúng nội dung trang con -->
    <div class="container my-4">
      <sitemesh:write property="body" />
    </div>

    <footer class="bg-light text-center py-3 border-top mt-auto">
      <small>© 2026 Admin Portal - Bootstrap Template</small>
    </footer>

    <!-- Bootstrap 5 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
