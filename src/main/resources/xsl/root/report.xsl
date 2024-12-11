<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <!-- Include section-specific XSLTs -->
    <xsl:include href="../sections/TitlePage.xsl"/>
    <xsl:include href="../sections/TableOfContents.xsl"/>
    <xsl:include href="../sections/ExecutiveSummary.xsl"/>
    <xsl:include href="../sections/FinancialOverview.xsl"/>
    <xsl:include href="../sections/CustomerInsights.xsl"/>
    <xsl:include href="../sections/ProductPerformance.xsl"/>
    <xsl:include href="../sections/RiskAnalysis.xsl"/>
    <xsl:include href="../sections/Appendices.xsl"/>

    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
        <fo:root>
            <!-- Layout master setup -->
            <fo:layout-master-set>
                <fo:simple-page-master master-name="A4" page-height="29.7cm" page-width="21cm" margin="2cm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <!-- Apply templates for each section -->
            <fo:page-sequence master-reference="A4">
                <fo:flow flow-name="xsl-region-body">
                    <xsl:apply-templates select="Report/TitlePage"/>
                    <xsl:apply-templates select="Report/TableOfContents"/>
                    <xsl:apply-templates select="Report/ExecutiveSummary"/>
                    <xsl:apply-templates select="Report/FinancialOverview"/>
                    <xsl:apply-templates select="Report/CustomerInsights"/>
                    <xsl:apply-templates select="Report/ProductPerformance"/>
                    <xsl:apply-templates select="Report/RiskAnalysis"/>
                    <xsl:apply-templates select="Report/Appendices"/>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
