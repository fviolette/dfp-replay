<?xml version="1.0" encoding="UTF-8"?>
<!--
  This file is part of the DITA Open Toolkit project.
  See the accompanying license.txt file for applicable licenses.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version="2.0">
    
  <xsl:attribute-set name="simple-page-master">
    <xsl:attribute name="page-width">
      <xsl:value-of select="$page-width"/>
    </xsl:attribute>
    <xsl:attribute name="page-height">
      <xsl:value-of select="$page-height"/>
    </xsl:attribute>
  </xsl:attribute-set>
  
 <xsl:attribute-set name="landscape-page-master">
  <xsl:attribute name="page-width">
    <xsl:value-of select="$page-width-landscape"/>
  </xsl:attribute>
  <xsl:attribute name="page-height">
    <xsl:value-of select="$page-height-landscape"/>
  </xsl:attribute>
  </xsl:attribute-set>
  
  <!-- legacy attribute set -->
  <xsl:attribute-set name="region-body" use-attribute-sets="region-body.odd"/>
  
  <xsl:attribute-set name="region-before.first">
    <xsl:attribute name="extent">
      <xsl:value-of select="$header-extent-first"/>
    </xsl:attribute>
    <xsl:attribute name="display-align">before</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="region-body.first">
    <xsl:attribute name="margin-top">
      <xsl:value-of select="$page-margin-top-first"/>
    </xsl:attribute>
    <xsl:attribute name="margin-bottom">
      <xsl:value-of select="$page-margin-bottom"/>
    </xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-left' else 'margin-right'}">
      <xsl:value-of select="$page-margin-inside"/>
    </xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-right' else 'margin-left'}">
      <xsl:value-of select="$page-margin-outside"/>
    </xsl:attribute>
    <xsl:attribute name="background-color">#ffffc0</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="region-body.odd">
    <xsl:attribute name="margin-top">
      <xsl:value-of select="$body-margin"/>
    </xsl:attribute>
    <xsl:attribute name="margin-bottom">
      <xsl:value-of select="$body-margin"/>
    </xsl:attribute>
    <xsl:attribute name="background-color">#CCCCCC</xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-left' else 'margin-right'}">
      <xsl:value-of select="$page-margin-inside"/>
    </xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-right' else 'margin-left'}">
      <xsl:value-of select="$page-margin-outside"/>
    </xsl:attribute>
    <xsl:attribute name="column-count">2</xsl:attribute>
    <xsl:attribute name="column-gap">1in</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="region-body.even">
    <xsl:attribute name="margin-top">
      <xsl:value-of select="$body-margin"/>
    </xsl:attribute>
    <xsl:attribute name="margin-bottom">
      <xsl:value-of select="$body-margin"/>
    </xsl:attribute>
    <xsl:attribute name="background-color">#CCCCCC</xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-left' else 'margin-right'}">
      <xsl:value-of select="$page-margin-outside"/>
    </xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-right' else 'margin-left'}">
      <xsl:value-of select="$page-margin-inside"/>
    </xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="region-body.landscape">
    <xsl:attribute name="margin-top">
      <xsl:value-of select="$page-margin-landscape"/>
    </xsl:attribute>
    <xsl:attribute name="margin-bottom">
      <xsl:value-of select="$page-margin-landscape"/>
    </xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-left' else 'margin-right'}">
      <xsl:value-of select="$page-margin-landscape"/>
    </xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-right' else 'margin-left'}">
      <xsl:value-of select="$page-margin-landscape"/>
    </xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="region-body__frontmatter.odd" use-attribute-sets="region-body.odd">
    <xsl:attribute name="margin-top">
      <xsl:value-of select="$page-margin-top-front"/>
    </xsl:attribute>
    <xsl:attribute name="margin-bottom">
      <xsl:value-of select="$page-margin-bottom-front"/>
    </xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-left' else 'margin-right'}">
      <xsl:value-of select="$page-margin-inside"/>
    </xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-right' else 'margin-left'}">
      <xsl:value-of select="$page-margin-outside-front"/>
    </xsl:attribute>
    <xsl:attribute name="background-color">#ffc0ff</xsl:attribute>
    <xsl:attribute name="background-image">url(Customization/OpenTopic/common/artwork/dita-logo.jpg)</xsl:attribute>
    <xsl:attribute name="background-repeat">no-repeat</xsl:attribute>
    <xsl:attribute name="background-position">100px 100px</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="region-body__frontmatter.even" use-attribute-sets="region-body.even">
    <xsl:attribute name="margin-top">
      <xsl:value-of select="$body-margin"/>
    </xsl:attribute>
    <xsl:attribute name="margin-bottom">
      <xsl:value-of select="$body-margin"/>
    </xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-left' else 'margin-right'}">
      <xsl:value-of select="$page-margin-outside-front"/>
    </xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-right' else 'margin-left'}">
      <xsl:value-of select="$page-margin-inside"/>
    </xsl:attribute>
    <xsl:attribute name="background-color">#ffc0ff</xsl:attribute>
  </xsl:attribute-set>
  
  <!-- legacy attribute set -->
  <xsl:attribute-set name="region-body__index" use-attribute-sets="region-body__index.odd"/>

  <xsl:attribute-set name="region-body__index.odd" use-attribute-sets="region-body.odd">
    <xsl:attribute name="column-count">2</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="region-body__index.even" use-attribute-sets="region-body.even">
    <xsl:attribute name="column-count">2</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="region-backmatter.first">
    <xsl:attribute name="margin-top"><xsl:value-of select="$page-margins"/></xsl:attribute>
    <xsl:attribute name="margin-bottom"><xsl:value-of select="$page-margins"/></xsl:attribute>
    <xsl:attribute name="margin-left"><xsl:value-of select="$page-margins"/></xsl:attribute>
    <xsl:attribute name="margin-right"><xsl:value-of select="$page-margins"/></xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="region-backmatter.even">
    <xsl:attribute name="margin-top"><xsl:value-of select="$page-margins"/></xsl:attribute>
    <xsl:attribute name="margin-bottom"><xsl:value-of select="$page-margins"/></xsl:attribute>
    <xsl:attribute name="margin-left"><xsl:value-of select="$page-margins"/></xsl:attribute>
    <xsl:attribute name="margin-right"><xsl:value-of select="$page-margins"/></xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="region-backmatter.odd">
    <xsl:attribute name="margin-top"><xsl:value-of select="$page-margins"/></xsl:attribute>
    <xsl:attribute name="margin-bottom"><xsl:value-of select="$page-margins"/></xsl:attribute>
    <xsl:attribute name="margin-left"><xsl:value-of select="$page-margins"/></xsl:attribute>
    <xsl:attribute name="margin-right"><xsl:value-of select="$page-margins"/></xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="region-backmatter.last">
    <xsl:attribute name="margin-top"><xsl:value-of select="$page-margins"/></xsl:attribute>
    <xsl:attribute name="margin-bottom"><xsl:value-of select="$page-margins"/></xsl:attribute>
    <xsl:attribute name="margin-left"><xsl:value-of select="$page-margins"/></xsl:attribute>
    <xsl:attribute name="margin-right"><xsl:value-of select="$page-margins"/></xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="region-before">
    <xsl:attribute name="extent">
      <xsl:value-of select="$page-margin-top"/>
    </xsl:attribute>
    <xsl:attribute name="display-align">before</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="region-after">
    <xsl:attribute name="extent">
      <xsl:value-of select="$page-margin-bottom"/>
    </xsl:attribute>
    <xsl:attribute name="display-align">after</xsl:attribute>
  </xsl:attribute-set>
    
</xsl:stylesheet>