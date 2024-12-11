package com.freemarker.muzam;


import javax.xml.transform.*;
import javax.xml.transform.stream.StreamSource;
import java.io.File;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class XsltTemplateCache {

    private final Map<String, Templates> cache = new ConcurrentHashMap<>();
    private final TransformerFactory transformerFactory;

    public XsltTemplateCache() {
        transformerFactory = TransformerFactory.newInstance();
    }

    public Templates getTemplate(String xslPath) throws TransformerConfigurationException {
        return cache.computeIfAbsent(xslPath, path -> {
            try {
                return transformerFactory.newTemplates(new StreamSource(new File(path)));
            } catch (TransformerConfigurationException e) {
                throw new RuntimeException("Error loading XSL template: " + path, e);
            }
        });
    }
}
