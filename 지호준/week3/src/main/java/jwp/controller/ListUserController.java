package jwp.controller;

import core.mvc.Controller;
import core.db.MemoryUserRepository;
import jwp.util.UserSessionUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ListUserController implements Controller {

    @Override
    public String execute(HttpServletRequest req, HttpServletResponse resp) {
        //로그인 유무 확인 후 모든 사용자 목록을 가져옴
        if (UserSessionUtils.isLogined(req.getSession())) {
            //사용자 목록을 req 객체의 속성으로 설정 => JSP 파일에서 해당 사용자 목록 사용 가능
            req.setAttribute("users", MemoryUserRepository.getInstance().findAll());
            return "/user/list.jsp";
        }

        return REDIRECT + "/user/loginForm";
    }
}
