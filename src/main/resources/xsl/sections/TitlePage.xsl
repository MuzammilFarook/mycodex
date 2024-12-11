<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="TitlePage">
        <fo:block font-size="18pt" font-weight="bold" text-align="center">
            <xsl:value-of select="Title"/>
        </fo:block>
        <fo:block text-align="center">
            <xsl:value-of select="Author"/>
        </fo:block>
        <fo:block text-align="center">
            <xsl:value-of select="Date"/>
        </fo:block>
    </xsl:template>
</xsl:stylesheet>
