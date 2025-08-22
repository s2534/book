<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>도서 등록</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <h2>📚 도서 등록</h2>

    <div class="button-group">
        <a href="index.jsp">🏠 홈</a>
        <a href="addBook.jsp">도서 등록</a>
        <a href="listBooks.jsp">도서 목록</a>
    </div>

    <form action="BookServlet" method="post">
        <input type="hidden" name="action" value="add">
        제목: <input type="text" name="title" required><br>
        저자: <input type="text" name="author"><br>
        출판사: <input type="text" name="publisher"><br>
        가격: <input type="number" name="price" min="0"><br><br>
        <input type="submit" value="등록">
    </form>
</body>
</html>
