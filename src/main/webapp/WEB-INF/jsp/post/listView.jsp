<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
            
 <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel="stylesheet" href="/static/css/style.css" type="text/css">
<title>메모리스트</title>
</head>
<body>

<!-- 로그인을 하지 않은상태에서 list_view에 접속하게 되면 500에러가 발생하므로 이에 대한 alert처리나 새로운 페이지를 구현하는 것을 추천-->
<div id="wrap">
	<c:import url="/WEB-INF/jsp/include/header.jsp"/>
	<section class="d-flex justify-content-center">
		<div class="w-75">
		<div class="display-4 text-center my-5"><b>메모 리스트</b></div>
			
			<table class="table table-sm text-center">
				
				<thead>
					<tr>
						<th>No.</th>
						<th>제목</th>
						<th>시간</th>
					</tr>	
				</thead>
			
				<tbody>
				<c:forEach var="post" items="${postList }">
					<tr>
					
						<td>${post.id }</td>
						<td><a href="/post/detail_view?postId=${post.id }">${post.subject }</a></td>
						<td><fmt:formatDate value="${post.createdAt }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
					</tr>	
					
				</c:forEach>
				</tbody>
				
			</table>
			
			<div class="d-flex justify-content-end mt-3 mb-5">
				<a href="/post/create_view" class="btn btn-success">글쓰기</a>
			</div>
		</div>
		
	
	</section>
	<c:import url="/WEB-INF/jsp/include/footer.jsp"/>


</div>

</body>
</html>