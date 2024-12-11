<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="Appendices">
        <fo:block page-break-before="always">
        <fo:block font-size="14pt" font-weight="bold">Appendices</fo:block>
        <xsl:for-each select="Appendix">
            <fo:block font-weight="bold" margin-top="10pt">
                <xsl:value-of select="Title"/>
            </fo:block>
            <fo:block>
                <xsl:value-of select="Content"/>
            </fo:block>
        </xsl:for-each>
        </fo:block>
    </xsl:template>
</xsl:stylesheet>
