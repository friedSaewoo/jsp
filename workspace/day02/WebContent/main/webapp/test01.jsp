<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP페이지</title>
</head>
<body>
<!-- method를 get으로 작성하면 폼 데이터를 get방식으로 서버에 전송하고
	method를 post로 작성하면 폼 데이터를 post방식으로 서버에 전송한다
	즉, 우리가 method get을 쓰면 서블릿의 doGet()메소드가 실행된다 -->
<!-- 폼 태그의 method 속성을 생략하면 디폴트는 get이다 -->
	<form action="/day02/Hello" method="get">
        <input type="text" name ="userName" placeholder="이름">
        <!-- button태그는 기본적으로 타입이 submit이다 
        submit 버튼은 현재 form 태그의 action에 작성된 경로로 요청(request)을 보낸다
        이때 request에는 현재 폼에 속해있는 모든 폼 데이터를 가지고 있다.-->
        <button>전송</button>
    </form>
</body>
</html>