package org.jasig.cas.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jasig.cas.CentralAuthenticationService;
import org.jasig.cas.authentication.principal.UsernamePasswordCredentials;
import org.jasig.cas.ticket.TicketException;
import org.jasig.cas.web.support.CookieRetrievingCookieGenerator;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

/** 
 * @ClassName: RegisterController 
 * @Description: TODO
 * @author weijunfan
 * @date 2012-10-18 上午08:54:52 
 *  
 */
public class RegisterAfterLoginController extends AbstractController
{

    private CentralAuthenticationService centralAuthenticationService;
    private CookieRetrievingCookieGenerator  ticketGrantingTicketCookieGenerator;
    
    protected ModelAndView handleRequestInternal(HttpServletRequest request,
            HttpServletResponse response) throws Exception
    {
        ModelAndView signinView=new ModelAndView();
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        bindTicketGrantingTicket(username, password, request, response);
        String viewName=getSignInView(request);
        signinView.setViewName(getSignInView(request));
        return signinView;
    }
    
    
    /**
     * Invoke generate validate Tickets and add the TGT to cookie.
     * @param loginName     the user login name.
     * @param loginPassword the user login password.
     * @param request       the HttpServletRequest object.
     * @param response      the HttpServletResponse object.
     */
    protected void bindTicketGrantingTicket(String loginName, String loginPassword, HttpServletRequest request, HttpServletResponse response){
        try {
            UsernamePasswordCredentials credentials = new UsernamePasswordCredentials();
            credentials.setUsername(loginName);
            credentials.setPassword(loginPassword);
            String ticketGrantingTicket = centralAuthenticationService.createTicketGrantingTicket(credentials);
            ticketGrantingTicketCookieGenerator.addCookie(request, response, ticketGrantingTicket);
        } catch (TicketException te) {
            logger.error("Validate the login name " + loginName + " failure, can't bind the TGT!", te);
        } catch (Exception e){
            logger.error("bindTicketGrantingTicket has exception.", e);
        }
    }
    
    /**
     * Get the signIn view URL.
     * @param request the HttpServletRequest object.
     * @return redirect URL
     */
    protected String getSignInView(HttpServletRequest request) {
        String service = ServletRequestUtils.getStringParameter(request, "service", "");
        return ("redirect:login" + (service.length() > 0 ? "?service=" + service : ""));
    }


    public CentralAuthenticationService getCentralAuthenticationService()
    {
        return centralAuthenticationService;
    }

    public void setCentralAuthenticationService(
            CentralAuthenticationService centralAuthenticationService)
    {
        this.centralAuthenticationService = centralAuthenticationService;
    }

    public CookieRetrievingCookieGenerator getTicketGrantingTicketCookieGenerator()
    {
        return ticketGrantingTicketCookieGenerator;
    }

    public void setTicketGrantingTicketCookieGenerator(
            CookieRetrievingCookieGenerator ticketGrantingTicketCookieGenerator)
    {
        this.ticketGrantingTicketCookieGenerator = ticketGrantingTicketCookieGenerator;
    }

}
