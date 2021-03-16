<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">

<link rel="stylesheet" href="css/join.css">
<title>caracample</title>
<style>
</style>
</head>
<body>
	<div class="wrap">
		<div class="container_bg"></div>
		<div class="container" id="container">
			<div class="col-lg-4"></div>
			<div class="col-lg-4">
				<div class="jumbtron" style="padding-top: 20px;">
					<form method="post" action="join.do">
						<h3 style="text-align: center">회원가입 화면</h3>
						<div class="form-group">
							<!-- 아이디 중복체크 버튼 넣어서 중복체크하기! -->
							<input type="text" class="form-control" placeholder="아이디"
								name="managerID" maxlength="20" required>
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="비밀번호"
								name="managerPW" maxlength="20" required>
						</div>

						<div class="form-group">
							<input type="text" class="form-control" placeholder="이름"
								name="managerName" maxlength="20" required>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" placeholder="이메일"
								name="managerEmail" maxlength="20" required>
						</div>
						<input type="submit" class="btn btn-primary form-control"
							value="회원가입">
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