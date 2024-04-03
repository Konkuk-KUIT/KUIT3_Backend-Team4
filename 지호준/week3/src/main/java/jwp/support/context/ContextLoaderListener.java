package jwp.support.context;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.util.logging.Logger;

// Servlet/JSP가 들어있는 Web application의 LifeCycle의 event를 관리
// 웹 어플리케이션이 시작되거나 종료될 때 호출할 메서드를 정의
@WebListener
public class ContextLoaderListener implements ServletContextListener {
    private static final Logger logger = Logger.getLogger(ContextLoaderListener.class.getName());

    @Override
    public void contextInitialized(ServletContextEvent sce) {
//        ResourceDatabasePopulator populator = new ResourceDatabasePopulator();
//        populator.addScript(new ClassPathResource("jwp.sql"));
//        ConnectionManager.getDataSource();
//        DatabasePopulatorUtils.execute(populator, ConnectionManager.getDataSource());

        logger.info("Completed Load ServletContext!");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}