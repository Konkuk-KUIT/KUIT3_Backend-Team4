package jwp.controller;

import core.db.MemoryUserRepository;
import jwp.model.User;
import jwp.model.dto.UpdateUser;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/user/update")
public class UpdateUserController extends HttpServlet {

  private final MemoryUserRepository userRepository = MemoryUserRepository.getInstance();

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    String userId = (String) req.getSession(false).getAttribute("userId");

    if (userId == null || !userRepository.existUserById(userId)) {
      resp.sendRedirect("/user/login");
      return;
    }

    UpdateUser requestUser = UpdateUser.from(req);

    User user = userRepository.findUserById(userId);
    user.update(requestUser);
    userRepository.changeUserInfo(user);

    resp.sendRedirect("/user/user-list");
  }

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    HttpSession session = req.getSession();
    String userId = (String) session.getAttribute("userId");
    System.out.println(userId);

    User user = userRepository.findUserById(userId);
    req.setAttribute("users", user);

    RequestDispatcher rd = req.getRequestDispatcher("/user/updateForm.jsp");
    rd.forward(req, resp);
  }
}
