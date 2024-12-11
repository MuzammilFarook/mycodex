<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="RiskAnalysis">
        <fo:block page-break-before="always">
        <fo:block font-size="14pt" font-weight="bold">Risk Analysis</fo:block>
        <fo:table border="1pt solid black" width="100%">
            <fo:table-body>
                <fo:table-row>
                    <fo:table-cell><fo:block>Description</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block>Likelihood</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block>Impact</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block>Mitigation</fo:block></fo:table-cell>
                </fo:table-row>
                <xsl:for-each select="Risk">
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block><xsl:value-of select="Description"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block><xsl:value-of select="Likelihood"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block><xsl:value-of select="Impact"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block><xsl:value-of select="Mitigation"/></fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </xsl:for-each>
            </fo:table-body>
        </fo:table>
        </fo:block>
    </xsl:template>
</xsl:stylesheet>
