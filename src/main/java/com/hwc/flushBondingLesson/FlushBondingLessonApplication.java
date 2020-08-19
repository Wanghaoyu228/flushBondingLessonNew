package com.hwc.flushBondingLesson;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication
@MapperScan
public class FlushBondingLessonApplication {

    public static void main(String[] args) {
        SpringApplication.run(FlushBondingLessonApplication.class, args);
    }

}
