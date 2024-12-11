package com.freemarker.muzam;

import org.springframework.stereotype.Service;

import javax.xml.XMLConstants;
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;
import java.io.File;

@Service
public class ValidationService {

    public void validateXMLSchema(String xmlPath, String xsdPath) throws Exception {
        SchemaFactory factory = SchemaFactory.newInstance(XMLConstants.W3C_XML_SCHEMA_NS_URI);
        Source[] schemas = {
                new StreamSource(new File("src/main/resources/xsd/common.xsd")),
                new StreamSource(new File(xsdPath))
        };
        Schema schema = factory.newSchema(schemas);
        Validator validator = schema.newValidator();
        validator.validate(new StreamSource(new File(xmlPath)));
    }
}

