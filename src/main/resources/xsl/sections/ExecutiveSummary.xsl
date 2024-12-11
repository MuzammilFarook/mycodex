<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="ExecutiveSummary">
        <fo:block page-break-before="always">
        <fo:block font-size="14pt" font-weight="bold">Executive Summary</fo:block>
        <fo:block>
            <xsl:value-of select="Overview"/>
        </fo:block>
        <fo:block font-style="italic">Key Points:</fo:block>
        <fo:list-block>
            <xsl:for-each select="KeyPoints/Point">
                <fo:list-item>
                    <fo:list-item-label>
                        <fo:block>•</fo:block>
                    </fo:list-item-label>
                    <fo:list-item-body>
                        <fo:block><xsl:value-of select="."/></fo:block>
                    </fo:list-item-body>
                </fo:list-item>
            </xsl:for-each>
        </fo:list-block>
        </fo:block>
    </xsl:template>
</xsl:stylesheet>
