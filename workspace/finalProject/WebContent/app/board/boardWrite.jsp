<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>글쓰기</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/boardWrite.css" />
  </head>
  <body>
    <div class="container">
      <!-- 작성완료 경로 처리하기 -->
      <form id="write-form" action="#" method="post" enctype="multipart/form-data">
        <h1>글쓰기</h1>
        <div class="form-group">
          <label for="title">제목</label>
          <input type="text" id="title" name="boardTitle" required />
        </div>
        <div class="form-group">
          <label for="author">작성자</label>
          <!-- 작성자 서버 연결시 로그인한 회원 아이디로 수정하기 -->
          <div class="writer">짱구</div>
        </div>
        <div class="form-group">
          <label for="content">내용</label>
          <textarea id="content" name="boardContent" required></textarea>
        </div>
        <div class="form-group">
          <label for="file">파일 첨부</label>
          <input type="file" id="file" name="boardFile" />
        </div>
        <div class="btn-group">
          <button type="submit" class="submit-btn">작성 완료</button>
          <!-- 취소 버튼 js로 처리하기 -->
          <button type="button" class="cancle-btn">취소</button>
        </div>
      </form>
    </div>
    <script src="${pageContext.request.contextPath}/assets/js/boardWrite.js"></script>
  </body>
</html>
