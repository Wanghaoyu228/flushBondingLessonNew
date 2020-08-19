package com.hwc.flushBondingLesson.controller;

import com.hwc.flushBondingLesson.bean.Knowledge;
import com.hwc.flushBondingLesson.service.KnowledgeService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/knowledge")
public class KnowledgeController{

    @Autowired
    private KnowledgeService knowledgeService;


    @GetMapping(value = "/index")
    public String index(Integer id , Model model){
        List<Knowledge> titleList = knowledgeService.findAllKnowledge("1");
        List<Knowledge> detailList = knowledgeService.findAllKnowledge("2");
        model.addAttribute("titleList",titleList);
        model.addAttribute("detailList",detailList);
        return "knowledgeIndex";
    }

    @RequestMapping("/getInfo")
    @ResponseBody
    public String getInfo(Integer id){
        Knowledge knowledge = knowledgeService.findOneById(id);
        String content = StringUtils.isNotBlank(knowledge.getContent())?knowledge.getContent():"无详情信息，请联系管理员！";
        return content;
    }

}
