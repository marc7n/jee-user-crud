package pl.coderslab.users;

import pl.coderslab.entity.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/delete")
public class UserDelete extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();
        userDao.delete(Integer.parseInt(request.getParameter("id")));
        response.sendRedirect(request.getContextPath() + "/user/list");
    }
}