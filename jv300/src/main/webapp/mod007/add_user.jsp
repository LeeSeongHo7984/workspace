<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	#header {
		width: 100%;
		position: absolute;
		top: 0;
		text-align: center;
		background-color: #f1f1f1;
		font-size: 30px;
	}
	
	#content-wrapper {
		text-align: center;
		margin: 400px 100px;
	}
	
	#footer {
		width: 100%;
		position: absolute;
		bottom: 0;
		padding: 30px 0;
		text-align: center;
		font-size: 34px;
		background-color: #f1f1f1;
	}
</style>
<body id="wrapper">
   <div>
   		<div id="header">
   			<jsp:include page="/incl/banner.jsp">
   	            <jsp:param name="subtitle" value='<%=URLEncoder.encode(\"mod007 : Java Beans and include<br>회원가입\",\"UTF-8\") %>'/>
   			</jsp:include>
   		</div>
   		<div id="content-wrapper">
   			<h3>회원가입</h3>
   			 <form action="add_user.do" method="post">
			   회원 아이디: <input type="text" name="userId"><br>
			   비밀번호 : <input type="password" name="passwd"><br>
			   이름 : <input type="text" name="userName"><br>
			   주민번호 : <input type="text" name="ssn"  placeholder="앞자리 6자리"><br>
			   이메일 : <input type="text" name="email1">
			   <select name="email2">
	            <option>이메일 선택</option>
	            <option>naver.com</option>
	            <option>nate.com</option>
	            <option>daum.net</option>
	            <option>gmail.com</option>
		         </select>
		         <br>
			   주소 : <input type="text" name="addr1"><input type="text" name="addr2">
			   <br><input type="submit" value="회원가입">
		   </form>
   		</div>
   		<div id="footer">
   			<%@ include file="/incl/footer.jsp" %>
   		</div>
   </div>
</body>
</html>