<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<%@include file="../include/header.jsp" %>
<body>
  <%@include file="../include/navication.jsp" %>
  <div class="container" id="main">
    <main class="form-signin">
      <form name="update-user" method="post" action="/user/update">
        <div class="form-floating">
          <input type="text" class="form-control" value="${users.password}" id="password" name="password" placeholder="Password">
          <label for="password">Password</label>
        </div>
        <div class="form-floating">
          <input type="text" class="form-control" value="${users.name}" id="name" name="name" placeholder="name">
          <label for="name">Name</label>
        </div>
        <div class="form-floating">
          <input type="email" class="form-control" value="${users.email}" id="email" name="email" placeholder="name@example.com">
          <label for="email">Email address</label>
        </div>
        <div style="height:10px;">
        </div>
        <div>
          <input type="hidden" id="userId" name="userId" value="${users.userId}">
        </div>
        <button class="w-100 btn btn-lg btn-primary" type="submit">Update</button>
      </form>
    </main>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="../js/scripts.js"></script>
</body>
</html>