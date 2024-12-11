package com.freemarker.muzam;

import org.apache.fop.apps.*;
import org.springframework.stereotype.Service;

import javax.xml.transform.*;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamSource;
import java.io.*;

@Service
public class PdfService {

    private final FopFactory fopFactory;
    private final XsltTemplateCache templateCache;

    public PdfService(XsltTemplateCache templateCache) throws Exception {
        // Initialize FOP Factory with default configuration
        this.fopFactory = FopFactory.newInstance(new File(".").toURI());
        this.templateCache = templateCache; // Inject the cache
    }

    public byte[] getPDF(String xml, String documentSet, String documentName, boolean draft) throws FOPException, TransformerException {
        // Parse XML input
        Source sourceXml = new StreamSource(new StringReader(xml));

        // Fetch templates using the cache
        Templates templates = getTemplatesForRootDocument(documentSet, documentName);

        // Prepare output stream
        ByteArrayOutputStream bout = new ByteArrayOutputStream();
        FOUserAgent foUserAgent = fopFactory.newFOUserAgent();

        // Create FOP instance
        Fop fop = fopFactory.newFop(MimeConstants.MIME_PDF, foUserAgent, bout);

        // Create transformer and set parameters
        Transformer transformer = templates.newTransformer();
        transformer.setParameter("draft", draft);

        // Transform XML to PDF
        transformer.transform(sourceXml, new SAXResult(fop.getDefaultHandler()));

        return bout.toByteArray();
    }

    private Templates getTemplatesForRootDocument(String documentSet, String documentName) throws TransformerConfigurationException {
        // Construct the XSL file path
        String xslPath = "src/main/resources/xsl/" + documentSet + "/" + documentName + ".xsl";

        // Use the template cache to get the templates
        return templateCache.getTemplate(xslPath);
    }
}

