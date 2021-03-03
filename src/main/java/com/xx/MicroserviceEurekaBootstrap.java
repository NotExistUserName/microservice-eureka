package com.xx;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

/**
 * @discription eureka启动器
 * @author: xx
 * @date: 2021/2/27 12:32
 */
@Slf4j
@EnableEurekaServer
@SpringBootApplication
public class MicroserviceEurekaBootstrap {

    public static void main(String[] args) {
        SpringApplication.run(MicroserviceEurekaBootstrap.class,args);
        log.info("micro service eureka server boot successfully..");
    }
}
