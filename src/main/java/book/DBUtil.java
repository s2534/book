package book;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1521:xe", // 오라클 주소
                "system",  // 오라클 아이디
                "1234"   // 오라클 비번
            );
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}
