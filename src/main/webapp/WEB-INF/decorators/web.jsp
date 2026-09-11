<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta charset="UTF-8" />
    <title><sitemesh:write property="title"/></title>
    <!-- Bootstrap 5 CSS CDN -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <sitemesh:write property="head" />
  </head>
  <body class="d-flex flex-column min-vh-100">
    <!-- Header -->
    <%@ include file="/common/web/header.jsp" %>

    <!-- Content (Body của các trang con) -->
    <div class="container my-4">
      <sitemesh:write property="body" />
    </div>

    <!-- Footer -->
    <%@ include file="/common/web/footer.jsp" %>

    <!-- Bootstrap 5 JS CDN -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
