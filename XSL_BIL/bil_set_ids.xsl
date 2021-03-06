<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exslt="http://exslt.org/common"
                exclude-result-prefixes="exslt"
                version="2.0">

<xsl:output method="xml"/>

<xsl:param name="src-doc-path"/>

<xsl:variable name="src-doc" select="document(concat('file:///',replace($src-doc-path,'\\','/')))"/>

<xsl:variable name="lang"   select="if (/*/@lang) then /*/@lang else 'en'"/>
<xsl:variable name="prefix" select="if (@lang='en') then '' else concat($lang,'_')"/>

<xsl:template match="/">
  <xsl:variable name="zh-tree">
    <tree><xsl:apply-templates select="//body/*"/></tree>
  </xsl:variable>
  <html lang="{concat($src-doc/*/@lang,'-',$lang)}">
    <xsl:copy-of select="$src-doc/*/head"/>
    <body>
      <xsl:copy-of select="$src-doc/*/body/@*"/>
      <xsl:apply-templates select="$src-doc/*/body/node()" mode="out"/>
      <xsl:apply-templates select="exslt:node-set($zh-tree)/*/node()" mode="out"/>
      <xsl:copy-of select="$src-doc/*/body//script"/>
    </body>
  </html>
</xsl:template>

<xsl:template match="@*|node()">
  <xsl:copy>
    <xsl:apply-templates select="@*|node()"/>
  </xsl:copy>
</xsl:template>

<xsl:template match="@*|node()" mode="out">
  <xsl:copy>
    <xsl:apply-templates select="@*|node()" mode="out"/>
  </xsl:copy>
</xsl:template>

<xsl:template match="script" mode="out"/>

<xsl:template match="div[@id='pwcmetainfo']"/>
<xsl:template match="div[@id='pwcbannerinfo']"/>

<!--  do not change metadata IDs -->
<!--
<xsl:template match="@id[not(ancestor-or-self::*[@id='pwcmetainfo' or @id='pwcbannerinfo'])]">
-->
<xsl:template match="@id">
  <xsl:attribute name="id">
    <xsl:value-of select="concat($prefix,.)"/>
  </xsl:attribute>
</xsl:template>

<xsl:template match="a/@href[.!='#' and .!='#none' and starts-with(.,'#')]" priority="5">
  <xsl:attribute name="href">
    <xsl:value-of select="concat('#',$prefix,substring(.,2))"/>
  </xsl:attribute>
</xsl:template>

<xsl:template match="a/@href[.!='#' and .!='#none' and contains(.,'#')]" priority="3">
  <xsl:attribute name="href">
    <xsl:value-of select="concat(substring-before(.,'#'),'#',$prefix,substring-after(.,'#'))"/>
  </xsl:attribute>
</xsl:template>

<xsl:template match="a/@href[.!='#' and .!='#none']" priority="1">
  <xsl:attribute name="href">
    <xsl:value-of select="concat($prefix,.)"/>
  </xsl:attribute>
</xsl:template>

<xsl:template match="a[img[@alt='table']]/@onclick[starts-with(.,'toggle')]|
                     a/@onclick[starts-with(.,'showTable')]">
  <xsl:variable name="quot">'</xsl:variable>
  <xsl:variable name="id" select="subsequence(tokenize(.,$quot),2,1)"/>
  <xsl:attribute name="onclick">
    <xsl:value-of select="replace(.,concat($quot,$id),concat($quot,$prefix,$id))"/>
  </xsl:attribute>
</xsl:template>

<!-- Use source graphics : graphics are not translated -->
<!--
<xsl:template match="a/@onclick[starts-with(.,'displayGraphics(')]">
  <xsl:variable name="quot">'</xsl:variable>
  <xsl:variable name="id" select="subsequence(tokenize(.,$quot),2,1)"/>
  <xsl:attribute name="onclick">
    <xsl:value-of select="replace(.,concat($quot,$id),concat($quot,$prefix,$id))"/>
  </xsl:attribute>
</xsl:template>

<xsl:template match="a/@onclick[starts-with(.,'displayGraphicsNav(')]">
  <xsl:variable name="quot">'</xsl:variable>
  <xsl:variable name="id" select="subsequence(tokenize(.,$quot),4,1)"/>
  <xsl:attribute name="onclick">
    <xsl:value-of select="replace(.,concat($quot,$id),concat($quot,$prefix,$id))"/>
  </xsl:attribute>
</xsl:template>
-->

</xsl:stylesheet>
