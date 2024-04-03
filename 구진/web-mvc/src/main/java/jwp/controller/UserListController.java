package jwp.controller;

import core.db.MemoryUserRepository;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/user-list")
public class UserListController extends HttpServlet {

  private final MemoryUserRepository userRepository = MemoryUserRepository.getInstance();

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String userId = (String) req.getSession(false).getAttribute("userId");

    if (userId == null || !userRepository.existUserById(userId)) {
      resp.sendRedirect("/user/login");
      return;
    }

    req.setAttribute("users", userRepository.findAll());
    RequestDispatcher rd = req.getRequestDispatcher("/user/list.jsp");
    rd.forward(req, resp);
  }
}
