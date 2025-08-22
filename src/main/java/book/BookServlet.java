package book;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServlet;

// BookServlet: 도서 등록/목록 처리
public class BookServlet extends HttpServlet {

    private BookDAO dao;

    @Override
    public void init() throws ServletException {
        super.init();
        dao = new BookDAO(); // DAO 객체 생성
    }

    // POST 요청 처리 (도서 등록)
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8"); // 한글 처리
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            String title = request.getParameter("title");
            String author = request.getParameter("author");
            String publisher = request.getParameter("publisher");
            int price = 0;
            try {
                price = Integer.parseInt(request.getParameter("price"));
            } catch (NumberFormatException e) {
                price = 0;
            }

            Book book = new Book();
            book.setTitle(title);
            book.setAuthor(author);
            book.setPublisher(publisher);
            book.setPrice(price);

            dao.insertBook(book); // DB에 저장
        }

        // 등록 후 도서 목록 페이지로 이동
        response.sendRedirect("listBooks.jsp");
    }

    // GET 요청 처리 (선택사항: 목록 보기 등)
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 필요하다면 목록 조회 처리
        doPost(request, response); // 간단하게 POST와 동일 처리
    }
}
