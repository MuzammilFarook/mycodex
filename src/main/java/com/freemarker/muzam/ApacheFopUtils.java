package com.freemarker.muzam;

import org.apache.fop.apps.Fop;
import org.apache.fop.apps.FopFactory;
import org.apache.fop.apps.MimeConstants;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamSource;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;

public class ApacheFopUtils {
    public static void generatePDF(String xmlPath, String xslPath, OutputStream outputStream) throws Exception {
        FopFactory fopFactory = FopFactory.newInstance(new File(".").toURI());
        TransformerFactory transformerFactory = TransformerFactory.newInstance();

        StreamSource xslStream = new StreamSource(new File(xslPath));

        // Configure FOP for PDF generation
        Fop fop = fopFactory.newFop(MimeConstants.MIME_PDF, outputStream);
        Transformer transformer = transformerFactory.newTransformer(xslStream);
        StreamSource xmlStream = new StreamSource(new File(xmlPath));

        transformer.transform(xmlStream, new javax.xml.transform.sax.SAXResult(fop.getDefaultHandler()));
    }
}
