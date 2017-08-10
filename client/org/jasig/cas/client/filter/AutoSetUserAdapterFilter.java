package org.jasig.cas.client.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jasig.cas.client.validation.Assertion;

public class AutoSetUserAdapterFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
    public final void doFilter(final ServletRequest servletRequest, final ServletResponse servletResponse, final FilterChain filterChain) throws IOException, ServletException {  
        final HttpServletRequest request = (HttpServletRequest) servletRequest;  
        final HttpServletResponse response = (HttpServletResponse) servletResponse;  
        final HttpSession session = request.getSession(false);  
        final Assertion assertion = session != null ? (Assertion) session.getAttribute(org.jasig.cas.client.util.AbstractCasFilter.CONST_CAS_ASSERTION) : null;  
        org.jasig.cas.client.authentication.AttributePrincipal principal = (org.jasig.cas.client.authentication.AttributePrincipal) request.getUserPrincipal();

        java.util.Map<String,Object> attributes =principal.getAttributes();
        if(attributes!=null){
        	 String email=attributes.get("email").toString();
        	 System.out.println(email);
        }
        filterChain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
