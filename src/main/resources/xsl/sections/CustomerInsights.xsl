<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="CustomerInsights">
        <fo:block page-break-before="always">
        <fo:block font-size="14pt" font-weight="bold">Customer Insights</fo:block>
        <fo:block>Total Customers: <xsl:value-of select="TotalCustomers"/></fo:block>

        <fo:block font-weight="bold">Demographics:</fo:block>
        <fo:table border="1pt solid black" width="100%">
            <fo:table-body>
                <fo:table-row>
                    <fo:table-cell><fo:block>Age Group</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block>Percentage</fo:block></fo:table-cell>
                </fo:table-row>
                <xsl:for-each select="Demographics/AgeGroup">
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block><xsl:value-of select="Range"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block><xsl:value-of select="Percentage"/>%</fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </xsl:for-each>
            </fo:table-body>
        </fo:table>

        <fo:block font-weight="bold">Gender Distribution:</fo:block>
        <fo:table border="1pt solid black" width="100%">
            <fo:table-body>
                <fo:table-row>
                    <fo:table-cell><fo:block>Male</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block><xsl:value-of select="Demographics/Gender/Male"/>%</fo:block></fo:table-cell>
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell><fo:block>Female</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block><xsl:value-of select="Demographics/Gender/Female"/>%</fo:block></fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>
        </fo:block>
    </xsl:template>
</xsl:stylesheet>
