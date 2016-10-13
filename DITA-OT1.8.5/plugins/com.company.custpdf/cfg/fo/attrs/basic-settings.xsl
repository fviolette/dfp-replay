<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>
<!--
    This file copyright by Suite Solutions, released under the same licenses as 
    the rest of the DITA Open Toolkit project hosted on Sourceforge.net.
    See the accompanying license.txt file for applicable licenses.
    
    This file is a collection of basic settings for the FO plugin.  There are many
    more settings available in other files in the toolkit.  Please see the file
    README.txt in the main plugin directory for more information.
-->

    <!-- Values are COLLAPSED or EXPANDED. If a value is passed in from Ant, use that value. -->
    <xsl:param name="bookmarkStyle">
      <xsl:choose>
        <xsl:when test="$antArgsBookmarkStyle!=''"><xsl:value-of select="$antArgsBookmarkStyle"/></xsl:when>
        <xsl:otherwise>COLLAPSED</xsl:otherwise>
      </xsl:choose>
    </xsl:param>

    <!-- Determine how to style topics referenced by <chapter>, <part>, etc. Values are:
         MINITOC: render with a MiniToc on left, content indented on right.
         BASIC: render the same way as any topic. -->
    <xsl:param name="chapterLayout">
      <xsl:choose>
        <xsl:when test="$antArgsChapterLayout!=''"><xsl:value-of select="$antArgsChapterLayout"/></xsl:when>
        <xsl:otherwise>MINITOC</xsl:otherwise>
      </xsl:choose>
    </xsl:param>
    <xsl:param name="appendixLayout" select="$chapterLayout"/>
    <xsl:param name="appendicesLayout" select="$chapterLayout"/>
    <xsl:param name="partLayout" select="$chapterLayout"/>
    <xsl:param name="noticesLayout" select="$chapterLayout"/>

    <!-- list of supported link roles -->
    <xsl:param name="includeRelatedLinkRoles" select="concat(' ', normalize-space($include.rellinks), ' ')"/>

    <!-- The default of 215.9mm x 279.4mm is US Letter size (8.5x11in) -->
    <xsl:variable name="page-width">8.5in</xsl:variable>
    <xsl:variable name="page-height">11in</xsl:variable>
    <xsl:variable name="page-width-landscape">11in</xsl:variable>
    <xsl:variable name="page-height-landscape">8.5in</xsl:variable>

    <!-- This is the default, but you can set the margins individually below. -->
    <xsl:variable name="page-margins">1in</xsl:variable>
    
    <!-- Change these if your page has different margins on different sides. -->
    <xsl:variable name="page-margin-inside" select="$page-margins"/>
    <xsl:variable name="page-margin-outside">.75in</xsl:variable>
    <xsl:variable name="page-margin-top" select="$page-margins"/>
    <xsl:variable name="page-margin-bottom" select="$page-margins"/>
    <xsl:variable name="body-margin">1.25in</xsl:variable>
    <xsl:variable name="page-margin-outside-front" select="$page-margins"/>
    <xsl:variable name="page-margin-top-front" select="$page-margins"/>
    <xsl:variable name="page-margin-bottom-front" select="$page-margins"/>
    <xsl:variable name="page-margin-top-first">2in</xsl:variable>
    <xsl:variable name="header-extent-first">0in</xsl:variable>

    <!--The side column width is the amount the body text is indented relative to the margin. -->
    <xsl:variable name="side-col-width">.5in</xsl:variable>

    <xsl:variable name="mirror-page-margins" select="true()"/>

    <xsl:variable name="default-font-size">11pt</xsl:variable>
    <xsl:variable name="default-line-height">120%</xsl:variable>
    <xsl:variable name="page-margin-landscape">5in</xsl:variable>
</xsl:stylesheet>
