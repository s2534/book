<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, book.BookDAO, book.Book" %>
<%
    BookDAO dao = new BookDAO();
    List<Book> books = dao.getBooks();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>도서 목록</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <h2>📚 도서 목록</h2>

    <div class="button-group">
        <a href="index.jsp">🏠 홈</a>
        <a href="addBook.jsp">도서 등록</a>
        <a href="listBooks.jsp">도서 목록</a>
    </div>

    <table>
        <tr>
            <th>ID</th>
            <th>제목</th>
            <th>저자</th>
            <th>출판사</th>
            <th>가격</th>
        </tr>
        <%
            for(Book b : books) {
        %>
        <tr>
            <td><%= b.getId() %></td>
            <td><%= b.getTitle() %></td>
            <td><%= b.getAuthor() %></td>
            <td><%= b.getPublisher() %></td>
            <td><%= b.getPrice() %></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
