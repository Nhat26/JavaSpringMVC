<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container">
  <div class="row d-flex justify-content-center">
    <div class="col">
      <div class="card">
        <div class="card-header">
          <i class="fas fa-table"></i> Quản lý user
        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-border" >
              <thead>
                <tr>
					<th>Id</th>
                  <th>Name</th>
                  <th>Email</th>
                  <th>Password</th>
                  <th>Type user</th>
                  <th>Create at</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${userList}" var="user">
                  <tr>
                  	
					<td>${user.id_user}</td>
                    <td>${user.name}</td>
                    <td>${user.email}</td>
                  <td>${user.password}</td>
                  <th>Type user</th>
                  <th>Create at</th>
                  <th>Action</th>
                  </tr>
                </c:forEach>
              </tbody>
            </table>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>
