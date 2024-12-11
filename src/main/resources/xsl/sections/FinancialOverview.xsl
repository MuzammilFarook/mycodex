<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="FinancialOverview">
        <fo:block page-break-before="always">
            <fo:block font-size="14pt" font-weight="bold">Financial Overview</fo:block>
            <fo:block>Year: <xsl:value-of select="Year"/></fo:block>

            <fo:block font-weight="bold">Metrics:</fo:block>
            <fo:table border="1pt solid black" width="100%">
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell><fo:block>Revenue</fo:block></fo:table-cell>
                        <fo:table-cell><fo:block>Profit</fo:block></fo:table-cell>
                        <fo:table-cell><fo:block>Expenses</fo:block></fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell><fo:block><xsl:value-of select="Metrics/Revenue"/></fo:block></fo:table-cell>
                        <fo:table-cell><fo:block><xsl:value-of select="Metrics/Profit"/></fo:block></fo:table-cell>
                        <fo:table-cell><fo:block><xsl:value-of select="Metrics/Expenses"/></fo:block></fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>

            <fo:block font-weight="bold" margin-top="10pt">Quarterly Breakdown:</fo:block>
            <fo:table border="1pt solid black" width="100%">
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell><fo:block>Quarter</fo:block></fo:table-cell>
                        <fo:table-cell><fo:block>Revenue</fo:block></fo:table-cell>
                        <fo:table-cell><fo:block>Profit</fo:block></fo:table-cell>
                        <fo:table-cell><fo:block>Expenses</fo:block></fo:table-cell>
                    </fo:table-row>
                    <xsl:for-each select="QuarterlyBreakdown/Quarter">
                        <fo:table-row>
                            <fo:table-cell><fo:block><xsl:value-of select="QuarterName"/></fo:block></fo:table-cell>
                            <fo:table-cell><fo:block><xsl:value-of select="Revenue"/></fo:block></fo:table-cell>
                            <fo:table-cell><fo:block><xsl:value-of select="Profit"/></fo:block></fo:table-cell>
                            <fo:table-cell><fo:block><xsl:value-of select="Expenses"/></fo:block></fo:table-cell>
                        </fo:table-row>
                    </xsl:for-each>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>
</xsl:stylesheet>
