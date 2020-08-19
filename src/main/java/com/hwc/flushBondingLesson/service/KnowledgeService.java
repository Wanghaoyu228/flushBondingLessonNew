package com.hwc.flushBondingLesson.service;

import com.hwc.flushBondingLesson.bean.Knowledge;
import com.hwc.flushBondingLesson.mapper.KnowledgeMapper;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class KnowledgeService {

    @Resource
    private KnowledgeMapper knowledgeMapper;





    //列表
    public List<Knowledge> findAllKnowledge(String level){
        return knowledgeMapper.findAllKnowledge(level);
    }


    public Knowledge findOneById(int id) {
        return knowledgeMapper.findOneById(id);
    }
}
