package jwp.controller;

import core.mvc.Controller;
import core.db.MemoryUserRepository;
import jwp.model.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CreateUserController implements Controller {

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse resp) {
        // user 객체 생성후 사용자가 입력한 정보로 초기화
        User user = new User(req.getParameter("userId"),
                req.getParameter("password"),
                req.getParameter("name"),
                req.getParameter("email"));
        // 사용자 저장
        MemoryUserRepository.getInstance().addUser(user);

        return REDIRECT + "/user/userList";
    }
}
