package com.hwc.flushBondingLesson.component;

//public class LoginHandlerInterceptor implements HandlerInterceptor {
//    @Override
//    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//        Object knowledge = request.getSession().getAttribute("knowledge");
//        if (knowledge == null) {
//            request.setAttribute("msg", "未登录，请先登录");
//            request.getRequestDispatcher("/login2.html").forward(request, response);
//            return false;
//        } else {
//            return true;
//        }
//    }
//
//    @Override
//    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
//
//    }
//
//    @Override
//    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
//
//    }
//}
