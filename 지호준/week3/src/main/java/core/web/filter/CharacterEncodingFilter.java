package core.web.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

//모든 URL 패턴에 지정
// 이 필터를 통해 웹 애플리케이션에서 문자들을 올바르게 처리하기 위해 모든 요청, 응답에 일관된 문자인코딩 처리 가능
@WebFilter("/*")
public class CharacterEncodingFilter implements Filter {
    private static final String DEFAULT_ENCODING = "UTF-8";

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        request.setCharacterEncoding(DEFAULT_ENCODING);
        response.setCharacterEncoding(DEFAULT_ENCODING);
        chain.doFilter(request, response);

    }

    @Override
    public void destroy() {
    }

}
