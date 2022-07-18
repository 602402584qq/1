package cn.tsit.spbi.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@ComponentScan(basePackages={"cn.tsit.spbi"})
@MapperScan(basePackages={"cn.tsit.spbi.mapper"})
public class SpringMvcConfig {
}
