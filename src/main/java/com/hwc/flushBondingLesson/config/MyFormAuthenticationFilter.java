package com.hwc.flushBondingLesson.config;

import org.apache.shiro.authc.*;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.apache.shiro.web.util.WebUtils;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;


@SuppressWarnings("all")
public class MyFormAuthenticationFilter extends FormAuthenticationFilter {


    //重写该方法, 判断返回登录信息
    @Override
    protected void setFailureAttribute(ServletRequest request, AuthenticationException ae) {
        String className = ae.getClass().getName();
        String message;
        String knowledgeName = getUsername(request);
        if (UnknownAccountException.class.getName().equals(className)) {
            message = "账户不存在";
        } else if (IncorrectCredentialsException.class.getName().equals(className)) {
            message = "密码不正确";
        } else if (LockedAccountException.class.getName().equals(className)) {
            message = "账户已锁定";
        } else if (ExcessiveAttemptsException.class.getName().equals(className)) {
            message = "用户名或密码错误次数过多，请十分钟后再试";
        } else if (AuthenticationException.class.getName().equals(className)) {
            message = "用户名或密码不正确";
        } else {
            message = "";
        }
        request.setAttribute(getFailureKeyAttribute(), message);
    }

    @Override
    protected boolean onLoginSuccess(AuthenticationToken token, Subject subject, ServletRequest request, ServletResponse response) throws Exception {
        WebUtils.getAndClearSavedRequest(request);
        WebUtils.redirectToSavedRequest(request, response, "/knowledge/index");//需要重新写一下，因为shiro成功之后  会跑到index.html  .这个地方是强制跳转到
        return false;
    }



    //判断是否为Ajax请求 <功能详细描述>

    public static boolean isAjaxRequest(HttpServletRequest request) {
        String header = request.getHeader("X-Requested-With");
        return "XMLHttpRequest".equals(header);
    }
}
