package com.hwc.flushBondingLesson.util.common;

import com.hwc.flushBondingLesson.bean.Knowledge;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;


public class CurrentUserUtils {

    public static Knowledge getCurrentuserInfo(){
        Session session = SecurityUtils.getSubject() .getSession();

        return (Knowledge) session.getAttribute("knowledge");
    }
}
