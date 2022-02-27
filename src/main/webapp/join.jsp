<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv= "Content-Type" content = "text/html; charset=UTF-8">
<meta name ="viewport" content="width=device-width", initial-scale="1">
<link rel ="stylesheet" href="css/bootstrap.css">
<title>JSP 게시판 웹사이트</title>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
</head>
<body>
	<nav class = "navbar navbar-default">
		<div class ="navbar-header">
			<button type ="button" class="navbar-toggle collapsed" 
			data-toggle = "collaspe" data-target ="#bs-example-navbar-collapse-1" 
			aria-expanded="false">
			<%--게시판 짝대기 --%>
			<span class ="icon-bar"></span>
			<span class ="icon-bar"></span>
			<span class ="icon-bar"></span>
			</button>
			<a class ="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
		</div>
		<div class = "collapse navbar-collapse" id ="bs-example-navbar-collapse-1">
			<ul class ="nav navbar-nav">
				<li><a href ="main.jsp">메인</a></li>
				<li><a href ="bbs.jsp">게시판</a></li>
			</ul>
			<ul class= "nav navbar-nav navbar-right">
				<li class = "dropdown">
					<a href ="#" class="dropdown-toggle"
						data-toggle="dropdown" role = "button" aria-haspopup="true"
						aria-expanded="false"> 접속하기<span class="caret"></span></a>
					<ul class ="dropdown-menu">
						<li class="active"><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>  
						<%-- #은 가리키는 링크가 없다는 것을 의미 --%>
						<!-- active라는건 현재 선택이 되었다는뜻(현재의 홈페이지 의미) -->
						<!-- span caret 이건 아이콘같은거 -->
					</ul>
				</li>	
			</ul>
		</div>
	</nav>	
	<div class="card bg-light">
	
		<div class "col-lg-4></div>
		<div class "col-lg-4>
			<div class="jumbotron" style="padding-top :20px;">
			<form method="post" action="joinAction.jsp">
			<%--보내겠다. 로그인정보를 loginaction.jsp로 --%>
				<h2 style="text-align:center;">회원가입 화면</h2>
				<p>
					<a href="" class="btn btn-block btn-twitter"> <i class="fab fa-twitter"></i>   Login via Twitter</a>
					<a href="" class="btn btn-block btn-facebook"> <i class="fab fa-facebook-f"></i>   Login via facebook</a>
				</p>
				<p class="divider-text"style="text-align: center;">
			        <span class="bg-light">OR</span>
			    </p>
				<%--정보를 넣을수있는 인풋, 클래스지정, placeholder는 아무것도 입력안했을때 보이는거, name은 나중에 서버 작성할때 사용되는 중요한 요소 반드시 user는 소문자.--%>
				<div class ="form-group">
					<input type="text" class="form-control" placeholder="아이디" name="userID"maxlength="20">
				</div>
				<div class ="form-group">
					<input type="password" class="form-control" placeholder="비밀번호" name="userPassword"maxlength="20">
				</div>
				<div class ="form-group">
					<input type="text" class="form-control" placeholder="이름" name="userName"maxlength="20">
				</div>
				<div class ="form-group" style="text-align: center;">
					<div class="btn-group" data-toggle="buttons">
						<label class ="btn btn-primary active">
							<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
						</label>
						<label class ="btn btn-primary ">
							<input type="radio" name="userGender" autocomplete="off" value="여자"checked>여자
						</label>
					</div>
				</div>
				<div class ="form-group">
					<input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="20">
				</div>
				<input type="submit" class="btn btn-primary form-control" value="회원가입">
			</form>
			</div>
		</div>
		<div class "col-lg-4></div>
	</div>
	<%--jsp전달 --%>
	<script src ="https://code.jqsuery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>