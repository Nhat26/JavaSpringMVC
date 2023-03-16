<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/styles/dangky.css">
    <link
    rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Open Sans:wght@400;600;700&display=swap"/>
    <title>Đăng ký</title>
  </head>
  <body>
    <div class="container mt-5">
        <div class="row justify-content-center">
          <div class="col-md-8">
            <div class="form-box">
              <div class="form-content">
                <h1>Sign up</h1>
                <form action="/spring-mvc/dangkypost" name="usersignup" method="POST">
                  <input type="text" name = "username" placeholder="Username">
                  <input type="email" name = "email" placeholder="Email">
                  <input type="password" name = "password" placeholder="Password">
                  <button type="submit">Xác nhận</button>
                </form>
              </div>
              <img class="software-engineer-bro-1"   src="${pageContext.request.contextPath}/resources/public/dangnhapimg.svg" alt="logo" >
            </div>
          </div>
        </div>
      </div>

    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    
  </body>
</html>