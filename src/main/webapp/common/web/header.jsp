<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="#">Linh Kiện</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">About</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Services</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
				<%
				if (request.getSession().getAttribute("userSession") != null) {
				%>
				<li class="nav-item dropdown no-arrow"><a
					class="nav-link dropdown-toggle" href="#" id="userDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="fas fa-user-circle fa-fw"></i>
					${userSession.email}
				</a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="userDropdown">
						<a class="dropdown-item" href="#">Settings</a> <a
							class="dropdown-item" href="#">Activity Log</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="/spring-mvc/dangxuat">Logout</a>
					</div></li>
				<%
				} else {
				%>
				</li><li class="nav-item"><a class="nav-link" href="/spring-mvc/dangnhap">Login</a></li>
				</li><li class="nav-item"><a class="nav-link" href="/spring-mvc/dangky">SignUp</a></li>
				<%
				}
				%>

			</ul>
		</div>
	</div>
</nav>