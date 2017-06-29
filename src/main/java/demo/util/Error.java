package demo.util;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by caoyuncong on
 * 2017/6/15 19:24
 * javaee_library.
 */
public class Error {
    public static void showError(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException {
        request.setAttribute("message", "Error.");
        response.sendRedirect("default.jsp");
    }
}
