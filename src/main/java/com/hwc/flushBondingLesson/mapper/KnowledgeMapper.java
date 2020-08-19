package com.hwc.flushBondingLesson.mapper;

import com.hwc.flushBondingLesson.bean.Knowledge;
import org.apache.ibatis.annotations.*;

import java.util.List;

//@Mapper
//@Component(value ="knowledgeMapper")
public interface KnowledgeMapper {


    @Select("select * from knowledge where level = #{level}")
    public List<Knowledge> findAllKnowledge(String level);


    @Select("select * from knowledge where id = #{id}")
    public Knowledge findOneById(int id);




}
