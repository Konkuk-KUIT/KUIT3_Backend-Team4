package jwp.controller;

import core.db.MemoryUserRepository;
import jwp.model.User;
import jwp.model.dto.LoginUser;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/user/login")
public class LoginUserController extends HttpServlet {

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    LoginUser loginUser = LoginUser.of(
      req.getParameter("userId"),
      req.getParameter("password"));

    User user = MemoryUserRepository.getInstance().findUserById(loginUser.getUserId());
    if (!user.matchPassword(loginUser.getPassword())) {
      // TODO : 로그인 실패
    }

    HttpSession session = req.getSession();
    session.setAttribute("user", user);
    resp.sendRedirect("/");
  }

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    RequestDispatcher rd = req.getRequestDispatcher("/user/login.jsp");
    rd.forward(req, resp);
  }
}
