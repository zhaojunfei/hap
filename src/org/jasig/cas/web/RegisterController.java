package org.jasig.cas.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.NotNull;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;


public class RegisterController extends AbstractController
{

	 @NotNull
	private String registerView;
    
    protected ModelAndView handleRequestInternal(HttpServletRequest request,
            HttpServletResponse response) throws Exception
    {
        ModelAndView signinView=new ModelAndView();
        signinView.setViewName(this.registerView);
        return signinView;
    }
    
    public void setRegisterView(final String registerView) {
        this.registerView = registerView;
    }

}
