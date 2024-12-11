<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="TableOfContents">
        <fo:block page-break-before="always">
        <fo:block font-size="14pt" font-weight="bold">Table of Contents</fo:block>
        <fo:table border="1pt solid black" width="100%">
            <fo:table-body>
                <xsl:for-each select="Section">
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block><xsl:value-of select="Title"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block text-align="right"><xsl:value-of select="PageNumber"/></fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </xsl:for-each>
            </fo:table-body>
        </fo:table>
        </fo:block>
    </xsl:template>
</xsl:stylesheet>
