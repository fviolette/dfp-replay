<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:opentopic="http //www.idiominc.com/opentopic"
    exclude-result-prefixes="opentopic"
    version="2.0">
    <xsl:variable name="map" select="//opentopic:map"/>
    <xsl:template name="createBackMatter">
        <fo:page-sequence master-reference="back-matter">
            <fo:flow flow-name="xsl-region-body">
                <fo:block id="endofdoc"/>
                    <fo:block>
                        <!--page content goes here-->
                        </fo:block>
                </fo:flow>
                </fo:page-sequence>
                </xsl:template>
</xsl:stylesheet>