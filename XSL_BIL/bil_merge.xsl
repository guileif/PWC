<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">

<xsl:output method="html" indent="yes"/>

<xsl:key name="k-id" match="*" use="@id"/>

<xsl:variable name="lang-orig" select="subsequence(tokenize(/html/@lang,'-'),1,1)"/>
<xsl:variable name="lang-trad" select="subsequence(tokenize(/html/@lang,'-'),2,1)"/>
<xsl:variable name="prefix" select="concat($lang-trad,'_')"/>

<xsl:template match="/">
  <xsl:apply-templates/>
</xsl:template>

<xsl:template match="/html/@lang"/>

<xsl:template match="@*|node()">
  <xsl:copy>
    <xsl:apply-templates select="@*|node()"/>
  </xsl:copy>
</xsl:template>

<xsl:template match="div[contains(@class, 'x-task-')]">
  <div>
    <xsl:apply-templates select="@*"/>
    <xsl:if test="@id and key('k-id',concat($prefix,@id))">
      <span id="{concat($prefix,@id)}"/>
    </xsl:if>
    <table style="width:100%">
      <colgroup>
        <col  style="width:50%"/>
        <col  style="width:50%"/>
      </colgroup>
      <tbody>
        <xsl:apply-templates select="node()"/>
      </tbody>
    </table>
  </div>
</xsl:template>

<xsl:template match="div[contains(@class,'x-task-')]/div[contains(@class,'task-postspace')]" priority="5">
  <tr>
    <td style="vertical-align:top">
      <xsl:copy>
        <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
    </td>
    <td style="vertical-align:top">
      <xsl:call-template name="get-translated-object">
        <xsl:with-param name="from-parent" select="'1'"/>
        <xsl:with-param name="class" select="'task-postspace'"/>
      </xsl:call-template>
    </td>
  </tr>
</xsl:template>

<xsl:template match="div[contains(@class,'x-task-')]/div[contains(@class,'x-title')]" priority="5">
  <tr>
    <td style="vertical-align:top">
      <xsl:copy>
        <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
    </td>
    <td style="vertical-align:top">
      <xsl:call-template name="get-translated-object"/>
    </td>
  </tr>
</xsl:template>

<xsl:template match="div[contains(@class,'x-task-')]/div[contains(@class,'x-tfmatr')]" priority="5">
  <xsl:apply-templates/>
</xsl:template>

<xsl:template match="div[contains(@class,'x-task-')]/div[contains(@class,'x-tfmatr')]/div[contains(@class,'x-tprereq')]" priority="5">
  <tr>
    <td style="vertical-align:top">
      <xsl:copy>
        <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
    </td>
    <td style="vertical-align:top">
      <div class="{../@class}">
        <xsl:call-template name="get-translated-object"/>
      </div>
    </td>
  </tr>
</xsl:template>

<xsl:template match="div[contains(@class,'x-task-')]/div[contains(@class,'x-taskproc')]" priority="5">
  <tr>
    <td style="vertical-align:top">
      <xsl:copy>
        <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
    </td>
    <td style="vertical-align:top">
      <xsl:call-template name="get-translated-object"/>
    </td>
  </tr>
</xsl:template>

<xsl:template match="div[contains(@class, 'x-task-')]/*" priority="1">
  <tr>
    <td colspan="2" style="vertical-align:top">
      <xsl:copy>
        <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
    </td>
  </tr>
</xsl:template>

<xsl:template match="div[contains(@class, 'x-graphic-')]/*/div[contains(@class, 'x-title-')]" priority="5">
  <xsl:copy>
  	<xsl:apply-templates select="@*|node()"/>
    <xsl:text> / </xsl:text>
    <xsl:call-template name="get-translated-object">
      <xsl:with-param name="text-only" select="'1'"/>
    </xsl:call-template>
  </xsl:copy>
</xsl:template>

<xsl:template match="div[contains(@class, 'x-graphic-')]/*/div[contains(@class, 'block-prespace')]" priority="5">
  <xsl:copy>
    <xsl:apply-templates select="@*|node()"/>
    <xsl:text> / </xsl:text>
    <xsl:call-template name="get-translated-object">
      <xsl:with-param name="from-parent" select="'1'"/>
      <xsl:with-param name="class" select="'block-prespace'"/>
      <xsl:with-param name="text-only" select="'1'"/>
    </xsl:call-template>
  </xsl:copy>
</xsl:template>

<xsl:template match="div[contains(@class, 'x-lof-')]">
  <div>
    <xsl:apply-templates select="@*"/>
    <xsl:if test="@id and key('k-id',concat($prefix,@id))">
      <span id="{concat($prefix,@id)}"/>
    </xsl:if>
    <table style="width:100%">
      <colgroup>
        <col  style="width:50%"/>
        <col  style="width:50%"/>
      </colgroup>
      <tbody>
        <xsl:apply-templates select="node()"/>
      </tbody>
    </table>
  </div>
</xsl:template>

<xsl:template match="div[contains(@class,'x-lof-1')]/div[contains(@class,'x-lof-item')]" priority="5">
  <tr>
    <td style="vertical-align:top">
      <xsl:copy>
        <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
    </td>
    <td style="vertical-align:top">
      <xsl:call-template name="get-translated-object"/>
    </td>
  </tr>
</xsl:template>

<xsl:template match="div[contains(@class,'x-lof-1')]/div[contains(@class,'x-title')]" priority="5">
  <tr>
    <td style="vertical-align:top">
      <xsl:copy>
        <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
    </td>
    <td style="vertical-align:top">
      <xsl:call-template name="get-translated-object"/>
    </td>
  </tr>
</xsl:template>

<xsl:template match="div[contains(@class, 'x-lof-1')]/*" priority="1">
  <tr>
    <td colspan="2" style="color:green">
      <xsl:copy>
        <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
    </td>
  </tr>
</xsl:template>

<!-- Remove translated content from file -->
<xsl:template match="div[starts-with(@id, $prefix)]" priority="8"/>

<xsl:template name="get-translated-object">
  <xsl:param name="from-parent" select="'0'"/>
  <xsl:param name="class"/>
  <xsl:param name="text-only" select="'0'"/>
  
  <xsl:choose>
    <xsl:when test="@id">
      <xsl:variable name="trad-obj" select="key('k-id',concat($prefix,@id))"/>
      <xsl:choose>
      	<xsl:when test="$trad-obj and $text-only='0'">
          <xsl:copy-of select="$trad-obj"/>
        </xsl:when>
        <xsl:when test="$trad-obj and $text-only='1'">
          <xsl:copy-of select="$trad-obj//text()"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:call-template name="error">
            <xsl:with-param name="msg">No corresponding structure found</xsl:with-param>
          </xsl:call-template>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:when>
    <xsl:when test="$from-parent='1' and ../@id">
      <xsl:variable name="trad-obj" select="key('k-id',concat($prefix,../@id))"/>
      <xsl:choose>
        <xsl:when test="$trad-obj and $trad-obj/*[contains(@class,$class)] and $text-only='0'">
          <xsl:copy-of select="$trad-obj/*[contains(@class,$class)][1]"/>
        </xsl:when>
        <xsl:when test="$trad-obj and $trad-obj/*[contains(@class,$class)] and $text-only='1'">
          <xsl:copy-of select="$trad-obj/*[contains(@class,$class)][1]//text()"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:call-template name="error">
            <xsl:with-param name="msg">No corresponding structure found</xsl:with-param>
          </xsl:call-template>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:when>
    <!-- try another level in case of not identified intermediate structure  -->
    <xsl:when test="$from-parent='1' and ../../@id">
      <xsl:variable name="trad-obj" select="key('k-id',concat($prefix,../../@id))"/>
      <xsl:choose>
        <xsl:when test="$trad-obj and $trad-obj/*/*[contains(@class,$class)] and $text-only='0'">
          <xsl:copy-of select="$trad-obj/*/*[contains(@class,$class)][1]"/>
        </xsl:when>
        <xsl:when test="$trad-obj and $trad-obj/*/*[contains(@class,$class)] and $text-only='1'">
          <xsl:copy-of select="$trad-obj/*/*[contains(@class,$class)][1]//text()"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:call-template name="error">
            <xsl:with-param name="msg">No corresponding structure found</xsl:with-param>
          </xsl:call-template>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="error">
        <xsl:with-param name="msg">No Id available : cannot link original and translated structures</xsl:with-param>
      </xsl:call-template>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>
      
<xsl:template name="error">
  <xsl:param name="msg"/>
  <span style="color:red"><xsl:value-of select="$msg"/></span>
</xsl:template>

</xsl:stylesheet>