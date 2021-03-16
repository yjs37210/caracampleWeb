<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">

<link rel="stylesheet" href="css/login.css">

<title>caracample</title>
<Style>
</Style>
</head>
<body>
	<div class="wrap">
		<div class="container_bg"></div>

		<div class="container" id="container">
			<div class="col-lg-4"></div>
			<div class="col-lg-4">
				<div class="jumbtron" style="padding-top: 20px;">
					<form method="post" action="login.do">
						<h3 style="text-align: center">CARACAMPLE 관리자</h3>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="아이디"
								name="managerID" maxlength="20">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="비밀번호"
								name="managerPW" maxlength="20">
						</div>
						<input type="submit" class="btn btn-primary form-control"
							value="로그인">
						<div class="join_txt">
							<a href="join.jsp">회원가입</a>
						</div>


					</form>
				</div>
			</div>
			<div class="col-lg-4"></div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js">
		
	</script>
	<script src="js/bootstrap.js"></script>
</body>
</html>