package core.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Controller {
    static final String REDIRECT = "redirect";
    String execute(HttpServletRequest req, HttpServletResponse resp);

}
