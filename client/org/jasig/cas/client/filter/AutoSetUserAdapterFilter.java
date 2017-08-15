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

		java.util.Map<String, Object> attributes = principal.getAttributes();
		if (attributes != null) {
//			String email = attributes.get("email").toString();
//			String sessionid = BaseUtil.generateRandomString(20);
//			String uid = "898cefdf-d372-410d-b5d5-332e71b43e64";
//			String roleId = "7e33ecad-b7c5-4b93-a4ff-b13f12a067be";
//			session.setAttribute(Constants.SESSION_USERID, uid);
//			session.setAttribute(Constants.SESSION_USERNAME, "admin");
//			session.setAttribute(Constants.SESSION_USERTYPE, "1");
//			session.setAttribute(Constants.SESSION_USERGID, roleId);
//			session.setAttribute(Constants.SESSION_SESSID, sessionid);
//			session.setAttribute(Constants.SESSION_USERSTATUS, "1");
//
//			CacheHelper.addCache("SessionCache", "U" + uid, sessionid);
//
//			IAdminRoleService adminRoleService = (IAdminRoleService) SpringContextHelper.getBean("AdminRoleService");
//
//			Map<String, Object> map = adminRoleService.getAdminRole(roleId);
//			String roleid = String.valueOf(map.get("r_id"));
//			String privilege = String.valueOf(map.get("r_privilege"));
//			CacheHelper.addCache("RoleCache", "R" + roleid, "," + privilege);

		}
        filterChain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
