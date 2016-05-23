<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    <xsl:strip-space elements="*"/>
    <xsl:output
        method="text"
        encoding="utf-8"
        omit-xml-declaration="yes"
        standalone="yes"
        cdata-section-elements=""
        indent="no"
        media-type="text/plain"
        />

    <xsl:template match="/">
        <xsl:text>1..</xsl:text><xsl:value-of select="count(//svrl:failed-assert) + count(//svrl:successful-report)"/>
        <xsl:text>&#xa;</xsl:text>
        <xsl:apply-templates select="*"/>
    </xsl:template>

    <xsl:template match="svrl:active-pattern">
        <xsl:text># </xsl:text><xsl:value-of select="@name"/>
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>

    <xsl:template match="svrl:failed-assert">
        <xsl:text>not ok - </xsl:text>
        <xsl:value-of select="svrl:text/text()"/>
        <xsl:text> </xsl:text>
        <xsl:text>"</xsl:text>
        <xsl:value-of select="@test"/>
        <xsl:text>"</xsl:text>
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>

    <xsl:template match="svrl:successful-report">
        <xsl:text>ok - </xsl:text>
        <xsl:value-of select="svrl:text/text()"/>
        <xsl:text> </xsl:text>
        <xsl:text>"</xsl:text>
        <xsl:value-of select="@test"/>
        <xsl:text>"</xsl:text>
        <xsl:text>&#xa;</xsl:text>
    </xsl:template>

    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
