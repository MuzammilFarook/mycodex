package com.freemarker.muzam;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {

    @Bean
    public XsltTemplateCache xsltTemplateCache() {
        return new XsltTemplateCache();
    }
}