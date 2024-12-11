<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="ProductPerformance">
        <fo:block page-break-before="always">
        <fo:block font-size="14pt" font-weight="bold">Product Performance</fo:block>
        <fo:table border="1pt solid black" width="100%">
            <fo:table-body>
                <fo:table-row>
                    <fo:table-cell><fo:block>Product Name</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block>Sales</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block>Growth Rate (%)</fo:block></fo:table-cell>
                </fo:table-row>
                <xsl:for-each select="Product">
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block><xsl:value-of select="Name"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block><xsl:value-of select="Sales"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block><xsl:value-of select="GrowthRate"/>%</fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </xsl:for-each>
            </fo:table-body>
        </fo:table>
        </fo:block>
    </xsl:template>
</xsl:stylesheet>
