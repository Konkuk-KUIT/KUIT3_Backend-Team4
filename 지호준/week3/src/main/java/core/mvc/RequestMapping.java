package core.mvc;

import jwp.controller.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

// URL <=> 컨트롤러 매핑처리
public class RequestMapping {
    private Map<String, Controller> controllers = new HashMap<>();

    private void initControllers() {
        controllers.put("/", new HomeController());

        controllers.put("/user/userList", new ListUserController());
        controllers.put("/user/login", new LogInController());
        controllers.put("/user/logout", new LogOutController());
        controllers.put("/user/signup", new CreateUserController());
        controllers.put("/user/updateForm", new UpdateUserFormController());
        controllers.put("/user/update", new UpdateUserController());

        controllers.put("/user/form", new ForwardController("/user/form.jsp"));
        controllers.put("/user/loginForm", new ForwardController("/user/login.jsp"));
        controllers.put("/user/loginFailed", new ForwardController("/user/login_failed.jsp"));
        controllers.put("/qna/form", new ForwardController("/qna/form.jsp"));
        controllers.put("/qna/show", new ForwardController("/qna/show.jsp"));
    }

    public RequestMapping() {
        initControllers();
    }

    public Controller getController(HttpServletRequest req) {
        return controllers.get(req.getRequestURI());
    }
}