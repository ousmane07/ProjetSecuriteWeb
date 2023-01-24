package sn.isi.securiteweb.filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet Filter implementation class AuthenticateFilter
 */
@WebFilter("")
public class AuthenticateFilter implements Filter {



    /**
     * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
     */
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;


        HttpSession session = req.getSession(false);
        String chemin = req.getServletPath();

        if (session != null || chemin.equals("/"))
            chain.doFilter(request, response);
        else
            res.sendRedirect("/securiteweb/login");
    }

    public void destroy() {}
}