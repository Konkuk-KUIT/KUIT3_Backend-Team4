package core.mvc;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

// loadonstartup 1로 설정 => 서블릿 초기화될때 가장 먼저 호출
@WebServlet(name = "dispatcher", urlPatterns = "/", loadOnStartup = 1)
public class DispatcherServlet extends HttpServlet {

    private RequestMapping requestMapping;
    private static final String REDIRECT_PREFIX = "redirect";

    // 서블릿 초기화시 requestMapping 객체 생성 => (요청 <=> 컨트롤러) 매핑
    @Override
    public void init() throws ServletException {
        this.requestMapping = new RequestMapping();
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 요청에 맞는 컨트롤러 매핑
        Controller controller = requestMapping.getController(req);
        try {
            String viewName = controller.execute(req, resp);
            move(viewName, req, resp);
        } catch (Throwable e) {
            throw new ServletException(e.getMessage());
        }
    }

    // redirect, forward 판별 후 처리
    private void move(String viewName, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (viewName.startsWith(REDIRECT_PREFIX)) {
            resp.sendRedirect(viewName.substring(REDIRECT_PREFIX.length()));
            return;
        }

        RequestDispatcher rd = req.getRequestDispatcher(viewName);
        rd.forward(req, resp);
    }
}
