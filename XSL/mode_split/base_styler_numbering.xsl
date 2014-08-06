<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE xsl:stylesheet [
    <!ENTITY % entities_commun SYSTEM "xsl_entities_commun.ent">
    %entities_commun;
]>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns="http://www.w3.org/1999/xhtml" 
  xmlns:_gte="http://www.arbortext.com/namespace/Styler/GeneratedTextElements" 
  xmlns:_sfe="http://www.arbortext.com/namespace/Styler/StylerFormattingElements" 
  xmlns:_ufe="http://www.arbortext.com/namespace/Styler/UserFormattingElements" 
  version="1.0" 
  exclude-result-prefixes="#default _ufe _sfe _gte">

<xsl:template match="numlist/address" mode="styler_numbering" priority="7">
  <xsl:number count="numlist/address" format="1."/>
</xsl:template>

<xsl:template match="pgblk/_ufe:chapsect-title" mode="styler_numbering" priority="2">
  <xsl:number count="pgblk[_ufe:chapsect-title]" level="any" format="1"/>
</xsl:template>

<xsl:template name="t-numbering-pbfmatr-child">
  <xsl:number count="pbfmatr/*[@_gte:count-as-id='cnt__pbfmatr^-None-.cnt']" level="any" format="1"/>
</xsl:template>

<xsl:template match="pbfmatr/_ufe:chapsect-title" mode="styler_numbering" priority="1">
  <xsl:call-template name="t-numbering-pbfmatr-child"/>
</xsl:template>

<xsl:template match="_ufe:chapsect-title" mode="styler_numbering" priority="0">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="pgblk/_ufe:cir-title" mode="styler_numbering" priority="2">
  <xsl:number count="pgblk[_ufe:cir-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="pbfmatr/_ufe:cir-title" mode="styler_numbering" priority="1">
  <xsl:call-template name="t-numbering-pbfmatr-child"/>
</xsl:template>

<xsl:template match="_ufe:cir-title" mode="styler_numbering" priority="0">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="pgblk/_ufe:consumables-title" mode="styler_numbering" priority="5">
  <xsl:number count="pgblk[_ufe:consumables-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="pbfmatr/_ufe:consumables-title" mode="styler_numbering" priority="4">
  <xsl:call-template name="t-numbering-pbfmatr-child"/>
</xsl:template>

<xsl:template match="pwcspblist/_ufe:consumables-title" mode="styler_numbering" priority="3">
  <xsl:number count="pwcspblist[_ufe:consumables-title]" level="any" format="1"/>
</xsl:template>

<xsl:template name="t-numbering-npara-ata-page-block">
  <xsl:number count="*[@_gte:count-as-id='npara-ata']" from="ata-page-block" level="any" format="1."/>
</xsl:template>

<xsl:template match="ata-page-block//consumables//_ufe:consumables-title" mode="styler_numbering" priority="2">
  <xsl:call-template name="t-numbering-npara-ata-page-block"/>
</xsl:template>

<xsl:template name="t-numbering-npara-page-block">
  <xsl:number count="*[@_gte:count-as-id='npara']" from="page-block" level="any" format="1."/>
</xsl:template>

<xsl:template match="page-block//consumables//_ufe:consumables-title" mode="styler_numbering" priority="1">
  <xsl:call-template name="t-numbering-npara-page-block"/>
</xsl:template>

<xsl:template match="_ufe:consumables-title" mode="styler_numbering" priority="0">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="pgblk/_ufe:eipc-title" mode="styler_numbering" priority="2">
  <xsl:number count="pgblk[_ufe:eipc-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="pbfmatr/_ufe:eipc-title" mode="styler_numbering" priority="1">
  <xsl:call-template name="t-numbering-pbfmatr-child"/>
</xsl:template>

<xsl:template match="_ufe:eipc-title" mode="styler_numbering" priority="0">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="pgblk/_ufe:em-title" mode="styler_numbering" priority="2">
  <xsl:number count="pgblk[_ufe:em-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="pbfmatr/_ufe:em-title" mode="styler_numbering" priority="1">
  <xsl:call-template name="t-numbering-pbfmatr-child"/>
</xsl:template>

<xsl:template match="_ufe:em-title" mode="styler_numbering" priority="0">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="pgblk/_ufe:fixequ-title" mode="styler_numbering" priority="5">
  <xsl:number count="pgblk[_ufe:fixequ-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="pbfmatr/_ufe:fixequ-title" mode="styler_numbering" priority="4">
  <xsl:call-template name="t-numbering-pbfmatr-child"/>
</xsl:template>

<xsl:template match="pwcspblist/_ufe:fixequ-title" mode="styler_numbering" priority="3">
  <xsl:number count="pwcspblist[_ufe:fixequ-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="page-block//fixtures-and-equipment//_ufe:fixequ-title" mode="styler_numbering" priority="2">
  <xsl:call-template name="t-numbering-npara-page-block"/>
</xsl:template>

<xsl:template match="ata-page-block//fixtures-and-equipment//_ufe:fixequ-title" mode="styler_numbering" priority="1">
  <xsl:call-template name="t-numbering-npara-ata-page-block"/>
</xsl:template>

<xsl:template match="_ufe:fixequ-title" mode="styler_numbering" priority="0">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="pgblk/_ufe:general-title" mode="styler_numbering" priority="5">
  <xsl:number count="pgblk[_ufe:general-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="pbfmatr/_ufe:general-title" mode="styler_numbering" priority="4">
  <xsl:call-template name="t-numbering-pbfmatr-child"/>
</xsl:template>

<xsl:template match="pwcspblist/_ufe:general-title" mode="styler_numbering" priority="3">
  <xsl:number count="pwcspblist[_ufe:general-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="page-block//general//_ufe:general-title" mode="styler_numbering" priority="2">
  <xsl:call-template name="t-numbering-npara-page-block"/>
</xsl:template>

<xsl:template match="ata-page-block//general//_ufe:general-title" mode="styler_numbering" priority="1">
  <xsl:call-template name="t-numbering-npara-ata-page-block"/>
</xsl:template>

<xsl:template match="_ufe:general-title" mode="styler_numbering" priority="0">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="pgblk/_ufe:glossary-title" mode="styler_numbering" priority="3">
  <xsl:number count="pgblk[_ufe:glossary-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="pbfmatr/_ufe:glossary-title" mode="styler_numbering" priority="2">
  <xsl:call-template name="t-numbering-pbfmatr-child"/>
</xsl:template>

<xsl:template match="pwcspblist/_ufe:glossary-title" mode="styler_numbering" priority="1">
  <xsl:number count="pwcspblist[_ufe:glossary-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="_ufe:glossary-title" mode="styler_numbering" priority="0">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="pgblk/_ufe:howtouse-title" mode="styler_numbering" priority="2">
  <xsl:number count="pgblk[_ufe:howtouse-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="pbfmatr/_ufe:howtouse-title" mode="styler_numbering" priority="1">
  <xsl:call-template name="t-numbering-pbfmatr-child"/>
</xsl:template>

<xsl:template match="_ufe:howtouse-title" mode="styler_numbering" priority="0">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="pgblk/_ufe:intro-title" mode="styler_numbering" priority="2">
  <xsl:number count="pgblk[_ufe:intro-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="pbfmatr/_ufe:intro-title" mode="styler_numbering" priority="1">
  <xsl:call-template name="t-numbering-pbfmatr-child"/>
</xsl:template>

<xsl:template match="_ufe:intro-title" mode="styler_numbering" priority="0">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="step/step/enumlist/item" mode="styler_numbering" priority="30">
  <xsl:number count="item" format="1" level="single"/>
</xsl:template>

<xsl:template match="prclist4//prclist4//prclist4//prclist4/item" mode="styler_numbering" priority="29">
  <xsl:number count="item" format="1)" level="single"/>
</xsl:template>

<xsl:template match="prclist4//prclist4//prclist4/item" mode="styler_numbering" priority="26">
  <xsl:number count="item" format="i." level="single"/>
</xsl:template>

<xsl:template match="prclist4//prclist4/item" mode="styler_numbering" priority="21">
  <xsl:number count="item" format="a." level="single"/>
</xsl:template>

<xsl:template match="prclist4/item" mode="styler_numbering" priority="11">
  <xsl:number count="item" format="1." level="single"/>
</xsl:template>

<xsl:template match="prclist3/item" mode="styler_numbering" priority="10">
  <xsl:number count="item" format="1." level="single"/>
</xsl:template>

<xsl:template match="prclist2/item" mode="styler_numbering" priority="9">
  <xsl:number count="item" format="1." level="single"/>
</xsl:template>

<xsl:template match="prclist1/item" mode="styler_numbering" priority="8">
  <xsl:number count="item" format="1." level="single"/>
</xsl:template>

<xsl:template match="list4//list4//list4//list4/item" mode="styler_numbering" priority="28">
  <xsl:number count="item" format="1)" level="single"/>
</xsl:template>

<xsl:template match="list4//list4//list4/item" mode="styler_numbering" priority="25">
  <xsl:number count="item" format="i." level="single"/>
</xsl:template>

<xsl:template match="list4//list4/item" mode="styler_numbering" priority="20">
  <xsl:number count="item" format="a." level="single"/>
</xsl:template>

<xsl:template match="list4/item" mode="styler_numbering" priority="7">
  <xsl:number count="item" format="1." level="single"/>
</xsl:template>

<xsl:template match="list3/item" mode="styler_numbering" priority="6">
  <xsl:number count="item" format="1." level="single"/>
</xsl:template>

<xsl:template match="list2/item" mode="styler_numbering" priority="5">
  <xsl:number count="item" format="1." level="single"/>
</xsl:template>

<xsl:template match="list1/item" mode="styler_numbering" priority="4">
  <xsl:number count="item" format="1." level="single"/>
</xsl:template>
   
<xsl:template match="enumlist//enumlist//enumlist//enumlist/item" mode="styler_numbering" priority="27">
  <xsl:number count="item" format="1)" level="single"/>
</xsl:template>

<xsl:template match="enumlist//enumlist//enumlist/item" mode="styler_numbering" priority="23">
  <xsl:number count="item" format="i." level="single"/>
</xsl:template>

<xsl:template match="enumlist//enumlist/item" mode="styler_numbering" priority="18">
  <xsl:number count="item" format="a." level="single"/>
</xsl:template>

<xsl:template match="enumlist/item" mode="styler_numbering" priority="2">
  <xsl:number count="item" format="1." level="single"/>
</xsl:template>
   
<xsl:template match="numlist/item" mode="styler_numbering" priority="13">
  <xsl:number count="item" format="1." level="single"/>
</xsl:template>

<xsl:template match="pbfmatr/manual-title" mode="styler_numbering" priority="3">
  <xsl:call-template name="t-numbering-pbfmatr-child"/>
</xsl:template>

<xsl:template match="pwcspblist/manual-title" mode="styler_numbering" priority="2">
  <xsl:number count="pwcspblist[manual-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="pgblk/manual-title" mode="styler_numbering" priority="1">
  <xsl:number count="pgblk[manual-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="manual-title" mode="styler_numbering" priority="0">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="ata-page-block//_sfe:BeforeOrAfterText//_ufe:npara-numbering" mode="styler_numbering" priority="2">
  <xsl:number count="_ufe:npara-numbering" from="ata-page-block" level="any" format="1."/>
</xsl:template>

<xsl:template match="page-block//_sfe:BeforeOrAfterText//_ufe:npara-numbering" mode="styler_numbering" priority="1">
  <xsl:number count="_ufe:npara-numbering" from="page-block" level="any" format="1."/>
</xsl:template>

<xsl:template match="pgblk/_ufe:num-index-title" mode="styler_numbering" priority="3">
  <xsl:number count="pgblk[_ufe:num-index-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="pbfmatr/_ufe:num-index-title" mode="styler_numbering" priority="2">
  <xsl:call-template name="t-numbering-pbfmatr-child"/>
</xsl:template>

<xsl:template match="pwcspblist/_ufe:num-index-title" mode="styler_numbering" priority="1">
  <xsl:number count="pwcspblist[_ufe:num-index-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="_ufe:num-index-title" mode="styler_numbering" priority="0">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="pgblk/_ufe:nut-option-title" mode="styler_numbering" priority="3">
  <xsl:number count="pgblk[_ufe:nut-option-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="pbfmatr/_ufe:nut-option-title" mode="styler_numbering" priority="2">
  <xsl:call-template name="t-numbering-pbfmatr-child"/>
</xsl:template>

<xsl:template match="pwcspblist/_ufe:nut-option-title" mode="styler_numbering" priority="1">
  <xsl:number count="pwcspblist[_ufe:nut-option-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="_ufe:nut-option-title" mode="styler_numbering" priority="0">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="subpara/subpara/subpara/subpara/subpara[not(title)]/para" mode="styler_numbering" priority="51">
  <xsl:number value="count(../preceding-sibling::subpara/para) + count(preceding-sibling::para) + 1" format="a"/>
</xsl:template>

<xsl:template match="subpara/subpara/subpara/subpara[not(title)]/para" mode="styler_numbering" priority="50">
  <xsl:number value="count(../preceding-sibling::subpara/para) + count(preceding-sibling::para) + 1" format="1"/>
</xsl:template>

<xsl:template match="subpara/subpara/subpara[not(title)]/para" mode="styler_numbering" priority="48">
  <xsl:number value="count(../preceding-sibling::subpara/para) + count(preceding-sibling::para) + 1" format="(a)"/>
</xsl:template>

<xsl:template match="subpara/subpara[not(title)]/para" mode="styler_numbering" priority="47">
  <xsl:number value="count(../preceding-sibling::subpara/para) + count(preceding-sibling::para) + 1" format="(1)"/>
</xsl:template>

<xsl:template match="n-para/subpara/para" mode="styler_numbering" priority="43">
  <xsl:number count="para[@_gte:count-as-id='cnt__para^n-para.cnt']" from="n-para" level="any" format="A."/>
</xsl:template>

<xsl:template match="pageblock-front/general//para" mode="styler_numbering" priority="40">
  <xsl:number count="para[@_gte:count-as-id='cnt__para^general.cnt']" from="general" level="any" format="A."/>
</xsl:template>

<xsl:template match="n-para[ancestor::book[contains(@doctype, 'epc')]]/para" mode="styler_numbering" priority="18">
  <xsl:number count="para" level="single" format="A."/>
</xsl:template>

<xsl:template match="taskproc/para" mode="styler_numbering" priority="7">
  <xsl:number count="para" level="single" format="(1)"/>
</xsl:template>

<xsl:template match="tprereq/para" mode="styler_numbering" priority="4">
  <xsl:number count="para" level="single" format="(1)"/>
</xsl:template>

<xsl:template match="numlist/part-group" mode="styler_numbering" priority="2">
  <xsl:number count="part-group" format="1." level="single"/>
</xsl:template>

<xsl:template match="pgblk/_ufe:pdlist-title" mode="styler_numbering" priority="1">
  <xsl:number count="pgblk[_ufe:pdlist-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="_ufe:pdlist-title" mode="styler_numbering" priority="0">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="pgblk/_ufe:sblist-title" mode="styler_numbering" priority="2">
  <xsl:number count="pgblk[_ufe:sblist-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="pbfmatr/_ufe:sblist-title" mode="styler_numbering" priority="1">
  <xsl:call-template name="t-numbering-pbfmatr-child"/>
</xsl:template>

<xsl:template match="_ufe:sblist-title" mode="styler_numbering" priority="0">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="pgblk/_ufe:spblist-title" mode="styler_numbering" priority="2">
  <xsl:number count="pgblk[_ufe:spblist-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="pbfmatr/_ufe:spblist-title" mode="styler_numbering" priority="1">
  <xsl:call-template name="t-numbering-pbfmatr-child"/>
</xsl:template>

<xsl:template match="_ufe:spblist-title" mode="styler_numbering" priority="0">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="pgblk/_ufe:spectools-title" mode="styler_numbering" priority="5">
  <xsl:number count="pgblk[_ufe:spectools-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="pbfmatr/_ufe:spectools-title" mode="styler_numbering" priority="4">
  <xsl:call-template name="t-numbering-pbfmatr-child"/>
</xsl:template>

<xsl:template match="pwcspblist/_ufe:spectools-title" mode="styler_numbering" priority="3">
  <xsl:number count="pwcspblist[_ufe:spectools-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="page-block//special-tools//_ufe:spectools-title" mode="styler_numbering" priority="2">
  <xsl:call-template name="t-numbering-npara-page-block"/>
</xsl:template>

<xsl:template match="ata-page-block//special-tools//_ufe:spectools-title" mode="styler_numbering" priority="1">
  <xsl:call-template name="t-numbering-npara-ata-page-block"/>
</xsl:template>

<xsl:template match="_ufe:spectools-title" mode="styler_numbering" priority="0">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="pgblk/_ufe:supplier-list-title" mode="styler_numbering" priority="3">
  <xsl:number count="pgblk[_ufe:supplier-list-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="pbfmatr/_ufe:supplier-list-title" mode="styler_numbering" priority="2">
  <xsl:call-template name="t-numbering-pbfmatr-child"/>
</xsl:template>

<xsl:template match="pwcspblist/_ufe:supplier-list-title" mode="styler_numbering" priority="1">
  <xsl:number count="pwcspblist[_ufe:supplier-list-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="_ufe:supplier-list-title" mode="styler_numbering" priority="0">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="pgblk/_ufe:task-title" mode="styler_numbering" priority="3">
  <xsl:number count="pgblk[_ufe:task-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="pbfmatr/_ufe:task-title" mode="styler_numbering" priority="2">
  <xsl:call-template name="t-numbering-pbfmatr-child"/>
</xsl:template>

<xsl:template match="pbfmatr//_ufe:task-title" mode="styler_numbering" priority="1">
  <xsl:choose>
    <xsl:when test="ancestor::pgblk">
      <xsl:number count="*[@_gte:count-as-id='task']" from="pgblk" level="any" format="1."/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:number count="*[@_gte:count-as-id='task' and not(ancestor::pgblk)]" level="any" format="1."/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="_ufe:task-title" mode="styler_numbering" priority="0">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="pgblk/_ufe:temp-rev-title" mode="styler_numbering" priority="2">
  <xsl:number count="pgblk[_ufe:temp-rev-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="pbfmatr/_ufe:temp-rev-title" mode="styler_numbering" priority="1">
  <xsl:call-template name="t-numbering-pbfmatr-child"/>
</xsl:template>

<xsl:template match="_ufe:temp-rev-title" mode="styler_numbering" priority="0">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="subpara/subpara/subpara/subpara/subpara/title" mode="styler_numbering" priority="72">
  <xsl:number count="subpara[title]" level="single" format="a"/>
</xsl:template>

<xsl:template match="subpara/subpara/subpara/subpara/title" mode="styler_numbering" priority="71">
  <xsl:number count="subpara[title]" level="single" format="1"/>
</xsl:template>

<xsl:template match="subpara/subpara/subpara/title" mode="styler_numbering" priority="70">
  <xsl:number count="subpara[title]" level="single" format="(a)"/>
</xsl:template>

<xsl:template match="subpara/subpara/title" mode="styler_numbering" priority="57">
  <xsl:number count="subpara[title]" level="single" format="(1)"/>
</xsl:template>

<xsl:template match="subpara/title" mode="styler_numbering" priority="38">
  <xsl:choose>
    <xsl:when test="ancestor::n-para">
      <xsl:number count="subpara/title[@_gte:count-as-id='subpara']|procedure/title[@_gte:count-as-id='subpara']" 
                  from="n-para" level="any" format="A."/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:number count="subpara/title[@_gte:count-as-id='subpara']|procedure/title[@_gte:count-as-id='subpara']" 
                  level="any" format="A."/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>
   
<xsl:template match="book[contains(@doctype, 'epc')]/frontmatter//graphic/title" mode="styler_numbering" priority="69">
  <xsl:for-each select="..">
    <xsl:number count="graphic[title]" from="frontmatter" level="any" format="1"/>
  </xsl:for-each>
</xsl:template>

<xsl:template match="book[contains(@doctype, 'ipc')]/frontmatter//figure/title" mode="styler_numbering" priority="68">
  <xsl:for-each select="..">
    <xsl:number count="figure[title]" level="single" format="1"/>
  </xsl:for-each>
</xsl:template>

<xsl:template name="t-numbering-ata-page-block-task-graphic">
  <xsl:number count="*[@_gte:count-as-id='cnt__graphic^ata-page-block.cnt']" 
              from="ata-page-block" level="any" format="1"/>
</xsl:template>

<xsl:template name="t-numbering-ata-page-block-task-graphic-offset">
  <xsl:param name="offset"/>
  <xsl:variable name="id" select="ancestor::ata-page-block/@_gte:id"/>
  <xsl:variable name="num" select="count(preceding::*[@_gte:count-as-id='cnt__graphic^ata-page-block.cnt' and ancestor::ata-page-block/@_gte:id=$id])+1"/>
  <xsl:number value="$num + $offset - 1" format="1"/>
</xsl:template>

<xsl:template match="ata-page-block//task/graphic/title" mode="styler_numbering" priority="67">
  <xsl:choose>
     <!--
     <xsl:when test="&anc-pgblk-0-13; and &anc-task-c;">
        <xsl:call-template name="t-numbering-ata-page-block-task-graphic-offset">
          <xsl:with-param name="offset" select="number(concat(number(ancestor::pgblk/@pgblknbr),'01'))"/>
        </xsl:call-template>
     </xsl:when>
     <xsl:when test="&anc-pgblk-0-13; and &anc-task-v;">
        <xsl:call-template name="t-numbering-ata-page-block-task-graphic-offset">
          <xsl:with-param name="offset" select="number(concat(number(ancestor::pgblk/@pgblknbr),'01'))"/>
        </xsl:call-template>
     </xsl:when>
     -->
     <xsl:when test="&anc-pgblk-0-13;">
        <xsl:call-template name="t-numbering-ata-page-block-task-graphic-offset">
          <xsl:with-param name="offset" select="number(concat(number(ancestor::pgblk/@pgblknbr),'01'))"/>
        </xsl:call-template>
     </xsl:when>
     <!--
     <xsl:when test="&anc-task-c;">
        <xsl:call-template name="t-numbering-ata-page-block-task-graphic"/>
     </xsl:when>
     <xsl:when test="&anc-task-v;">
        <xsl:call-template name="t-numbering-ata-page-block-task-graphic"/>
     </xsl:when>
     -->
     <xsl:otherwise>
        <xsl:call-template name="t-numbering-ata-page-block-task-graphic"/>
     </xsl:otherwise>
  </xsl:choose>
</xsl:template>
   
<xsl:template name="t-numbering-page-block-task-graphic">
  <xsl:number count="*[@_gte:count-as-id='cnt__graphic^page-block.cnt']" from="page-block" level="any" format="1"/>
</xsl:template>

<xsl:template name="t-numbering-page-block-task-graphic-offset">
  <xsl:param name="offset"/>
  <xsl:variable name="id" select="ancestor::page-block/@_gte:id"/>
  <xsl:variable name="num" select="count(preceding::*[@_gte:count-as-id='cnt__graphic^page-block.cnt' and ancestor::page-block/@_gte:id=$id])+1"/>
  <xsl:number value="$num + $offset - 1" format="1"/>
</xsl:template>

<xsl:template match="page-block//task/graphic/title" mode="styler_numbering" priority="66">
  <xsl:choose>
     <!--
     <xsl:when test="&anc-pgblk-0-13; and &anc-task-c;">
        <xsl:call-template name="t-numbering-page-block-task-graphic-offset">
          <xsl:with-param name="offset" select="number(concat(number(ancestor::pgblk/@pgblknbr),'01'))"/>
        </xsl:call-template>
     </xsl:when>
     <xsl:when test="&anc-pgblk-0-13; and &anc-task-v;">
        <xsl:call-template name="t-numbering-page-block-task-graphic-offset">
          <xsl:with-param name="offset" select="number(concat(number(ancestor::pgblk/@pgblknbr),'01'))"/>
        </xsl:call-template>
     </xsl:when>
     -->
     <xsl:when test="&anc-pgblk-0-13;">
        <xsl:call-template name="t-numbering-page-block-task-graphic-offset">
          <xsl:with-param name="offset" select="number(concat(number(ancestor::pgblk/@pgblknbr),'01'))"/>
        </xsl:call-template>
     </xsl:when>
     <!--
     <xsl:when test="&anc-task-c;">
        <xsl:call-template name="t-numbering-page-block-task-graphic"/>
     </xsl:when>
     <xsl:when test="&anc-task-v;">
        <xsl:call-template name="t-numbering-page-block-task-graphic"/>
     </xsl:when>
     -->
     <xsl:otherwise>
        <xsl:call-template name="t-numbering-page-block-task-graphic"/>
     </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="module[@module-name='Airworthiness_Limits']/pgblk/title" mode="styler_numbering" priority="65">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="page-block[@pb-name='glossary']/module/title" mode="styler_numbering" priority="61">
  <xsl:call-template name="t-numbering-npara-page-block"/>
</xsl:template>

<xsl:template match="page-block[@pb-name='supp_list']/module/title" mode="styler_numbering" priority="60">
  <xsl:call-template name="t-numbering-npara-page-block"/>
</xsl:template>

<xsl:template match="mm-fits/subpara/title" mode="styler_numbering" priority="62">
  <xsl:number value="count(../preceding-sibling::subpara[title])+1" format="A."/>
</xsl:template>

<xsl:template match="prcitem4/prcitem/title" mode="styler_numbering" priority="60">
  <xsl:number count="prcitem4/prcitem[title]" from="prclist4" level="any" format="1."/>
</xsl:template>

<xsl:template match="prcitem3/prcitem/title" mode="styler_numbering" priority="60">
  <xsl:number count="prcitem3/prcitem[title]" from="prclist3" level="any" format="1)"/>
</xsl:template>

<xsl:template match="prcitem2/prcitem/title" mode="styler_numbering" priority="59">
  <xsl:number count="prcitem2/prcitem[title]" from="prclist2" level="any" format="A."/>
</xsl:template>

<xsl:template match="prcitem1/prcitem/title" mode="styler_numbering" priority="55">
  <xsl:number count="prcitem1/prcitem[title]" from="prclist1" level="any" format="1."/>
</xsl:template>

<xsl:template match="page-block[@pb-name='ni']//mfmatr/title" mode="styler_numbering" priority="56">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="page-block[@pb-name='record-of-revisions']//n-para/title" mode="styler_numbering" priority="55">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="book[contains(@doctype, 'epc')]//figure/title" mode="styler_numbering" priority="54">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="book[contains(@doctype, 'epc')]//graphic/title" mode="styler_numbering" priority="53">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="book[contains(@doctype, 'ipc')]//figure/title" mode="styler_numbering" priority="52">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template name="t-numbering-task-table">
  <xsl:choose>
    <xsl:when test="ancestor::pgblk">
      <xsl:number count="*[@_gte:count-as-id='cnt__table^pgblk.cnt']" from="pgblk" level="any" format="1"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:number count="*[@_gte:count-as-id='cnt__table^pgblk.cnt' and not(ancestor::pgblk)]" level="any" format="1"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="t-numbering-task-table-offset">
  <xsl:param name="offset"/>
  <xsl:variable name="num">
    <xsl:choose>
      <xsl:when test="ancestor::pgblk">
        <xsl:variable name="id" select="ancestor::pgblk/@_gte:id"/>
        <xsl:value-of select="count(preceding::*[@_gte:count-as-id='cnt__table^pgblk.cnt' and ancestor::pgblk/@_gte:id=$id])+1"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="count(preceding::*[@_gte:count-as-id='cnt__table^pgblk.cnt' and not(ancestor::pgblk)])+1"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <xsl:number value="$num + $offset - 1" format="1"/>
</xsl:template>

<xsl:template match="task//table/title" mode="styler_numbering" priority="51">
  <xsl:choose>
     <!--
     <xsl:when test="&anc-pgblk-0-13; and &anc-task-c; and ../@display='expand'">
        <xsl:call-template name="t-numbering-task-table-offset">
          <xsl:with-param name="offset" select="number(concat(number(ancestor::pgblk/@pgblknbr),'01'))"/>
        </xsl:call-template>
     </xsl:when>
     <xsl:when test="&anc-pgblk-0-13; and &anc-task-v; and ../@display='expand'">
        <xsl:call-template name="t-numbering-task-table-offset">
          <xsl:with-param name="offset" select="number(concat(number(ancestor::pgblk/@pgblknbr),'01'))"/>
        </xsl:call-template>
     </xsl:when>
     <xsl:when test="&anc-pgblk-0-13; and ../@display='expand'">
        <xsl:call-template name="t-numbering-task-table-offset">
          <xsl:with-param name="offset" select="number(concat(number(ancestor::pgblk/@pgblknbr),'01'))"/>
        </xsl:call-template>
     </xsl:when>
     -->
     <xsl:when test="&anc-pgblk-0-13;">
        <xsl:call-template name="t-numbering-task-table-offset">
          <xsl:with-param name="offset" select="number(concat(number(ancestor::pgblk/@pgblknbr),'01'))"/>
        </xsl:call-template>
     </xsl:when>
     <!--
     <xsl:when test="&anc-task-c; and ../@display='expand'">
        <xsl:call-template name="t-numbering-task-table"/>
     </xsl:when>
     <xsl:when test="&anc-task-v; and ../@display='expand'">
        <xsl:call-template name="t-numbering-task-table"/>
     </xsl:when>
     <xsl:when test="../@display='expand'">
        <xsl:call-template name="t-numbering-task-table"/>
     </xsl:when>
     -->
     <xsl:otherwise>
        <xsl:call-template name="t-numbering-task-table"/>
     </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="page-block//graphic/title" mode="styler_numbering" priority="50">
  <xsl:choose>
     <xsl:when test="not(&anc-pgblk-0-13;)">
        <xsl:call-template name="t-numbering-page-block-task-graphic"/>
     </xsl:when>
     <xsl:when test="&anc-pgblk-0-13;">
        <xsl:call-template name="t-numbering-page-block-task-graphic-offset">
          <xsl:with-param name="offset" select="number(concat(number(ancestor::pgblk/@pgblknbr),'01'))"/>
        </xsl:call-template>
     </xsl:when>
  </xsl:choose>
</xsl:template>
   
<xsl:template match="ata-page-block//graphic/title" mode="styler_numbering" priority="49">
  <xsl:choose>
     <xsl:when test="not(&anc-pgblk-0-13;)">
        <xsl:call-template name="t-numbering-ata-page-block-task-graphic"/>
     </xsl:when>
     <xsl:when test="&anc-pgblk-0-13;">
        <xsl:call-template name="t-numbering-ata-page-block-task-graphic-offset">
          <xsl:with-param name="offset" select="number(concat(number(ancestor::pgblk/@pgblknbr),'01'))"/>
        </xsl:call-template>
     </xsl:when>
  </xsl:choose>
</xsl:template>

<xsl:template match="page-block//mm-fits/title" mode="styler_numbering" priority="47">
  <xsl:call-template name="t-numbering-npara-page-block"/>
</xsl:template>

<xsl:template match="ata-page-block//mm-fits/title" mode="styler_numbering" priority="46">
  <xsl:call-template name="t-numbering-npara-ata-page-block"/>
</xsl:template>

<xsl:template match="ata-page-block//fits-and-clears/title" mode="styler_numbering" priority="46">
  <xsl:call-template name="t-numbering-npara-ata-page-block"/>
</xsl:template>

<xsl:template match="page-block//fits-and-clears/title" mode="styler_numbering" priority="45">
  <xsl:call-template name="t-numbering-npara-page-block"/>
</xsl:template>

<xsl:template match="ata-page-block//n-para/title" mode="styler_numbering" priority="43">
  <xsl:call-template name="t-numbering-npara-ata-page-block"/>
</xsl:template>

<xsl:template match="page-block//n-para/title" mode="styler_numbering" priority="42">
  <xsl:call-template name="t-numbering-npara-page-block"/>
</xsl:template>

<xsl:template name="t-numbering-figure-wrapper">
  <xsl:choose>
    <xsl:when test="ancestor::page-block"><xsl:call-template name="t-numbering-figure"/></xsl:when>
    <xsl:otherwise><xsl:call-template name="t-numbering-figure-ata"/></xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="t-numbering-figure">
  <xsl:choose>
    <xsl:when test="ancestor::page-block">
      <xsl:number count="*[@_gte:count-as-id='cnt__figure^page-block.cnt']" from="page-block" level="any" format="1"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:number count="*[@_gte:count-as-id='cnt__figure^page-block.cnt' and not(ancestor::page-block)]" level="any" format="1"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="t-numbering-figure-ata">
  <xsl:choose>
    <xsl:when test="ancestor::ata-page-block">
      <xsl:number count="*[@_gte:count-as-id='cnt__figure^ata-page-block.cnt']" from="ata-page-block" level="any" format="1"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:number count="*[@_gte:count-as-id='cnt__figure^ata-page-block.cnt' and not(ancestor::ata-page-block)]" level="any" format="1"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="t-numbering-figure-offset-wrapper">
  <xsl:param name="offset"/>
  <xsl:choose>
    <xsl:when test="ancestor::page-block">
      <xsl:call-template name="t-numbering-figure-offset">
        <xsl:with-param name="offset" select="$offset"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="t-numbering-figure-offset-ata">
        <xsl:with-param name="offset" select="$offset"/>
      </xsl:call-template>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="t-numbering-figure-offset">
  <xsl:param name="offset"/>
  <xsl:variable name="num">
    <xsl:choose>
      <xsl:when test="ancestor::page-block">
        <xsl:variable name="id" select="ancestor::page-block/@_gte:id"/>
        <xsl:value-of select="count(preceding::*[@_gte:count-as-id='cnt__figure^page-block.cnt' and ancestor::page-block/@_gte:id=$id])+1"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="count(preceding::*[@_gte:count-as-id='cnt__figure^page-block.cnt' and not(ancestor::page-block)])+1"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <xsl:number value="$num + $offset - 1" format="1"/>
</xsl:template>

<xsl:template name="t-numbering-figure-offset-ata">
  <xsl:param name="offset"/>
  <xsl:variable name="num">
    <xsl:choose>
      <xsl:when test="ancestor::ata-page-block">
        <xsl:variable name="id" select="ancestor::ata-page-block/@_gte:id"/>
        <xsl:value-of select="count(preceding::*[@_gte:count-as-id='cnt__figure^ata-page-block.cnt' and ancestor::ata-page-block/@_gte:id=$id])+1"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="count(preceding::*[@_gte:count-as-id='cnt__figure^ata-page-block.cnt' and not(ancestor::ata-page-block)])+1"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <xsl:number value="$num + $offset - 1" format="1"/>
</xsl:template>

<xsl:template match="figure/title" mode="styler_numbering" priority="41">
  <xsl:choose>
    <xsl:when test="&pb-01;">
    </xsl:when>
    <xsl:when test="&pb-02;">
      <xsl:call-template name="t-numbering-figure-wrapper"/>
    </xsl:when>
    <xsl:when test="&pb-03;">
      <xsl:call-template name="t-numbering-figure-wrapper"/>
    </xsl:when>
    <xsl:when test="&pb-04;">
      <xsl:call-template name="t-numbering-figure-offset-wrapper">
        <xsl:with-param name="offset" select="number('100')"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-05;">
      <xsl:call-template name="t-numbering-figure-offset-wrapper">
        <xsl:with-param name="offset" select="number('101')"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-06;">
      <xsl:call-template name="t-numbering-figure-offset-wrapper">
        <xsl:with-param name="offset" select="number('201')"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-07;">
      <xsl:call-template name="t-numbering-figure-offset-wrapper">
        <xsl:with-param name="offset" select="number('201')"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-08;">
      <xsl:call-template name="t-numbering-figure-offset-wrapper">
        <xsl:with-param name="offset" select="number('301')"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-09;">
      <xsl:call-template name="t-numbering-figure-offset-wrapper">
        <xsl:with-param name="offset" select="number('301')"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-10;">
      <xsl:call-template name="t-numbering-figure-offset-wrapper">
        <xsl:with-param name="offset" select="number('401')"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-11;">
      <xsl:call-template name="t-numbering-figure-offset-wrapper">
        <xsl:with-param name="offset" select="number('701')"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-12;">
      <xsl:call-template name="t-numbering-figure-offset-wrapper">
        <xsl:with-param name="offset" select="number('401')"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-13;">
      <xsl:call-template name="t-numbering-figure-offset-wrapper">
        <xsl:with-param name="offset" select="number('501')"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-14;">
      <xsl:call-template name="t-numbering-figure-offset-wrapper">
        <xsl:with-param name="offset" select="number('601')"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-15;">
      <xsl:call-template name="t-numbering-figure-offset-wrapper">
        <xsl:with-param name="offset" select="number('701')"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-16;">
      <xsl:call-template name="t-numbering-figure-offset-wrapper">
        <xsl:with-param name="offset" select="number('801')"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-17;">
      <xsl:call-template name="t-numbering-figure-offset-wrapper">
        <xsl:with-param name="offset" select="number('901')"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-18;">
      <xsl:call-template name="t-numbering-figure-offset-wrapper">
        <xsl:with-param name="offset" select="number('1301')"/>
      </xsl:call-template>
    </xsl:when>
  </xsl:choose>
</xsl:template>

<xsl:template match="pwcpbfront/title" mode="styler_numbering" priority="39">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="procedure/title" mode="styler_numbering" priority="37">
  <xsl:choose>
    <xsl:when test="ancestor::n-para">
      <xsl:number count="subpara/title[@_gte:count-as-id='subpara']|procedure/title[@_gte:count-as-id='subpara']" 
                  from="n-para" level="any" format="A."/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:number count="subpara/title[@_gte:count-as-id='subpara' and not(ancestor::n-para)]|procedure/title[@_gte:count-as-id='subpara' and not(ancestor::n-para)]" 
                  level="any" format="A."/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="pwcspblist/title" mode="styler_numbering" priority="35">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template name="t-numbering-subtask">
  <xsl:choose>
    <xsl:when test="ancestor::task">
      <xsl:number count="*[@_gte:count-as-id='subtask']" from="task" level="any" format="A."/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:number count="*[@_gte:count-as-id='subtask' and not(ancestor::task)]" level="any" format="A."/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="taskproc/title" mode="styler_numbering" priority="34">
  <xsl:call-template name="t-numbering-subtask"/>
</xsl:template>

<xsl:template match="nutopt/title" mode="styler_numbering" priority="32">
  <xsl:number count="nutopt[title]" format="1."/>
</xsl:template>

<xsl:template match="sblist/title" mode="styler_numbering" priority="32">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="pwcni/title" mode="styler_numbering" priority="31">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="vendlist/title" mode="styler_numbering" priority="30">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="pgblk/title" mode="styler_numbering" priority="29">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="pwcchapsect-item/title" mode="styler_numbering" priority="28">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="tprereq/title" mode="styler_numbering" priority="27">
  <xsl:call-template name="t-numbering-subtask"/>
</xsl:template>

<xsl:template match="subtask/title" mode="styler_numbering" priority="26">
  <xsl:call-template name="t-numbering-subtask"/>
</xsl:template>

<xsl:template match="fits/title" mode="styler_numbering" priority="25">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="task/title" mode="styler_numbering" priority="24">
  <xsl:choose>
    <xsl:when test="ancestor::pgblk">
      <xsl:number count="*[@_gte:count-as-id='task']" from="pgblk" level="any" format="1."/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:number count="*[@_gte:count-as-id='task' and not(ancestor::pgblk)]" level="any" format="1."/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="highlights/title" mode="styler_numbering" priority="22">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="lof-item/title" mode="styler_numbering" priority="21">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="lot-item/title" mode="styler_numbering" priority="20">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="lot/title" mode="styler_numbering" priority="19">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="lof/title" mode="styler_numbering" priority="18">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="table//procedure//title" mode="styler_numbering" priority="17">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="torque-and-stretch/title" mode="styler_numbering" priority="16">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="spec-tool-table/title" mode="styler_numbering" priority="15">
  <xsl:number count="spec-tool-table[title]" format="1"/>
</xsl:template>

<xsl:template match="spb-list/title" mode="styler_numbering" priority="14">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="subject/title" mode="styler_numbering" priority="13">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="section/title" mode="styler_numbering" priority="12">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="page-block/title" mode="styler_numbering" priority="11">
  <xsl:variable name="previous-node" select="ancestor::frontmatter"/>
  <xsl:choose>
     <xsl:when test="boolean($previous-node)">
        <xsl:apply-templates mode="styler_numbering" select="$previous-node"/>
     </xsl:when>
     <xsl:otherwise>?</xsl:otherwise>
  </xsl:choose>
  <xsl:text>.</xsl:text>
  <xsl:number count="page-block[title]" format="1"/>
</xsl:template>

<xsl:template match="service-bull-list/title" mode="styler_numbering" priority="10">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="module/title" mode="styler_numbering" priority="9">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="frontmatter/title" mode="styler_numbering" priority="8">
  <xsl:number count="frontmatter[title]" format="1"/>
</xsl:template>

<xsl:template match="num-index/title" mode="styler_numbering" priority="7">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template name="t-numbering-table-wrapper">
  <xsl:choose>
    <xsl:when test="ancestor::page-block">
      <xsl:call-template name="t-numbering-table"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="t-numbering-table-ata"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="t-numbering-table">
  <xsl:choose>
    <xsl:when test="ancestor::page-block">
      <xsl:number count="*[@_gte:count-as-id='cnt__table^page-block.cnt']" from="page-block" level="any" format="1"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:number count="*[@_gte:count-as-id='cnt__table^page-block.cnt' and not(ancestor::page-block)]" level="any" format="1"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="t-numbering-table-ata">
  <xsl:choose>
    <xsl:when test="ancestor::ata-page-block">
      <xsl:number count="*[@_gte:count-as-id='cnt__table^ata-page-block.cnt']" from="ata-page-block" level="any" format="1"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:number count="*[@_gte:count-as-id='cnt__table^ata-page-block.cnt' and not(ancestor::ata-page-block)]" level="any" format="1"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="t-numbering-table-offset-wrapper">
  <xsl:param name="offset"/>
  <xsl:choose>
    <xsl:when test="ancestor::page-block">
      <xsl:call-template name="t-numbering-table-offset">
        <xsl:with-param name="offset" select="$offset"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="t-numbering-table-offset-ata">
        <xsl:with-param name="offset" select="$offset"/>
      </xsl:call-template>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="t-numbering-table-offset">
  <xsl:param name="offset"/>
  <xsl:variable name="num">
    <xsl:choose>
      <xsl:when test="ancestor::page-block">
        <xsl:variable name="id" select="ancestor::page-block/@_gte:id"/>
        <xsl:value-of select="count(preceding::*[@_gte:count-as-id='cnt__table^page-block.cnt' and ancestor::page-block/@_gte:id=$id])+1"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="count(preceding::*[@_gte:count-as-id='cnt__table^page-block.cnt' and not(ancestor::page-block)])+1"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <xsl:number value="$num + $offset - 1" format="1"/>
</xsl:template>

<xsl:template name="t-numbering-table-offset-ata">
  <xsl:param name="offset"/>
  <xsl:variable name="num">
    <xsl:choose>
      <xsl:when test="ancestor::ata-page-block">
        <xsl:variable name="id" select="ancestor::ata-page-block/@_gte:id"/>
        <xsl:value-of select="count(preceding::*[@_gte:count-as-id='cnt__table^ata-page-block.cnt' and ancestor::ata-page-block/@_gte:id=$id])+1"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="count(preceding::*[@_gte:count-as-id='cnt__table^ata-page-block.cnt' and not(ancestor::ata-page-block)])+1"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <xsl:number value="$num + $offset - 1" format="1"/>
</xsl:template>

<xsl:template match="table/title" mode="styler_numbering" priority="6">
  <xsl:choose>
    <xsl:when test="(&anc-doc-cir-em-tmm;) and (&anc-pgblk-0-13;)">
      <xsl:call-template name="t-numbering-task-table-offset">
        <xsl:with-param name="offset" select="number(concat(number(ancestor::pgblk/@pgblknbr),'01'))"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="(&anc-doc-cir-em-tmm;) and not(&anc-pgblk-0-13;)">
      <xsl:call-template name="t-numbering-task-table"/>
    </xsl:when>
    <xsl:when test="&pb-01;">
    </xsl:when>
    <xsl:when test="&pb-02;">
      <xsl:call-template name="t-numbering-table-wrapper"/>
    </xsl:when>
    <xsl:when test="&pb-03;">
      <xsl:call-template name="t-numbering-table-wrapper"/>
    </xsl:when>
    <xsl:when test="&pb-04;">
        <xsl:call-template name="t-numbering-table-offset-wrapper">
          <xsl:with-param name="offset" select="number('100')"/>
        </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-05;">
        <xsl:call-template name="t-numbering-table-offset-wrapper">
          <xsl:with-param name="offset" select="number('101')"/>
        </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-06;">
        <xsl:call-template name="t-numbering-table-offset-wrapper">
          <xsl:with-param name="offset" select="number('201')"/>
        </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-07;">
        <xsl:call-template name="t-numbering-table-offset-wrapper">
          <xsl:with-param name="offset" select="number('201')"/>
        </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-08;">
        <xsl:call-template name="t-numbering-table-offset-wrapper">
          <xsl:with-param name="offset" select="number('301')"/>
        </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-09;">
        <xsl:call-template name="t-numbering-table-offset-wrapper">
          <xsl:with-param name="offset" select="number('301')"/>
        </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-10;">
        <xsl:call-template name="t-numbering-table-offset-wrapper">
          <xsl:with-param name="offset" select="number('401')"/>
        </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-11;">
        <xsl:call-template name="t-numbering-table-offset-wrapper">
          <xsl:with-param name="offset" select="number('701')"/>
        </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-12;">
        <xsl:call-template name="t-numbering-table-offset-wrapper">
          <xsl:with-param name="offset" select="number('401')"/>
        </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-13;">
        <xsl:call-template name="t-numbering-table-offset-wrapper">
          <xsl:with-param name="offset" select="number('501')"/>
        </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-14;">
        <xsl:call-template name="t-numbering-table-offset-wrapper">
          <xsl:with-param name="offset" select="number('601')"/>
        </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-15;">
        <xsl:call-template name="t-numbering-table-offset-wrapper">
          <xsl:with-param name="offset" select="number('701')"/>
        </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-16;">
        <xsl:call-template name="t-numbering-table-offset-wrapper">
          <xsl:with-param name="offset" select="number('801')"/>
        </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-17;">
        <xsl:call-template name="t-numbering-table-offset-wrapper">
          <xsl:with-param name="offset" select="number('901')"/>
        </xsl:call-template>
    </xsl:when>
    <xsl:when test="&pb-18;">
        <xsl:call-template name="t-numbering-table-offset-wrapper">
          <xsl:with-param name="offset" select="number('1301')"/>
        </xsl:call-template>
    </xsl:when>
    <xsl:otherwise></xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="chapter/title" mode="styler_numbering" priority="4">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="book/title" mode="styler_numbering" priority="3">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="ata-page-block/title" mode="styler_numbering" priority="2">
      <xsl:variable name="previous-node" select="(ancestor::*[not((namespace-uri(.)='http://www.w3.org/1999/XSL/Format') or (namespace-uri(.)='http://www.arbortext.com/namespace/XslFoExtensions') or (starts-with(namespace-uri(.),'http://www.arbortext.com/namespace/Styler/')))][1]/ancestor::*[not((namespace-uri(.)='http://www.w3.org/1999/XSL/Format') or (namespace-uri(.)='http://www.arbortext.com/namespace/XslFoExtensions') or (starts-with(namespace-uri(.),'http://www.arbortext.com/namespace/Styler/')))][1]|ancestor::*[not((namespace-uri(.)='http://www.w3.org/1999/XSL/Format') or (namespace-uri(.)='http://www.arbortext.com/namespace/XslFoExtensions') or (starts-with(namespace-uri(.),'http://www.arbortext.com/namespace/Styler/')))][1]/ancestor::*[not((namespace-uri(.)='http://www.w3.org/1999/XSL/Format') or (namespace-uri(.)='http://www.arbortext.com/namespace/XslFoExtensions') or (starts-with(namespace-uri(.),'http://www.arbortext.com/namespace/Styler/')))][1][local-name()='ata-page-block' or local-name()='chapter' or local-name()='figure' or local-name()='frontmatter' or local-name()='highlights' or local-name()='lof' or local-name()='lot' or local-name()='module' or local-name()='page-block' or local-name()='section' or local-name()='subject']/*[local-name()='chapsect-title' or local-name()='cir-title' or local-name()='consumables-title' or local-name()='eipc-title' or local-name()='em-title' or local-name()='fixequ-title' or local-name()='general-title' or local-name()='glossary-title' or local-name()='howtouse-title' or local-name()='intro-title' or local-name()='manual-title' or local-name()='num-index-title' or local-name()='nut-option-title' or local-name()='pdlist-title' or local-name()='pwc-title' or local-name()='sblist-title' or local-name()='spblist-title' or local-name()='spectools-title' or local-name()='supplier-list-title' or local-name()='task-title' or local-name()='temp-rev-title' or local-name()='title' or local-name()='tmm-title'][1])[last()]"/>
      <xsl:choose>
         <xsl:when test="boolean($previous-node)">
            <xsl:apply-templates mode="styler_numbering" select="$previous-node"/>
         </xsl:when>
         <xsl:otherwise>?</xsl:otherwise>
      </xsl:choose>
      <xsl:text>-</xsl:text>
      <xsl:number count="ata-page-block[title]" format="01"/>
   </xsl:template>

<xsl:template match="title-page/title" mode="styler_numbering" priority="1">
  <xsl:number count="title-page[title]" format="1"/>
</xsl:template>

<xsl:template match="title" mode="styler_numbering" priority="0">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="pgblk/_ufe:tmm-title" mode="styler_numbering" priority="2">
  <xsl:number count="pgblk[not(ancestor::pgblk) and _ufe:tmm-title]" level="any" format="1"/>
</xsl:template>

<xsl:template match="pbfmatr/_ufe:tmm-title" mode="styler_numbering" priority="1">
  <xsl:call-template name="t-numbering-pbfmatr-child"/>
</xsl:template>

<xsl:template match="_ufe:tmm-title" mode="styler_numbering" priority="0">
  <!--This context has no numbering-->
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

<xsl:template match="enumlist//enumlist//enumlist//enumlist/unlitem" mode="styler_numbering" priority="12">
  <xsl:number count="unlitem" format="1)" level="single"/>
</xsl:template>

<xsl:template match="enumlist//enumlist//enumlist/unlitem" mode="styler_numbering" priority="11">
  <xsl:number count="unlitem" format="i." level="single"/>
</xsl:template>

<xsl:template match="enumlist//enumlist/unlitem" mode="styler_numbering" priority="8">
  <xsl:number count="unlitem" format="a." level="single"/>
</xsl:template>

<xsl:template match="enumlist/unlitem" mode="styler_numbering" priority="5">
  <xsl:number count="unlitem" format="1." level="single"/>
</xsl:template>

<!-- FROM SPECIFIC FILES -->

<xsl:template name="t-numbering-step">
  <xsl:number count="*[@_gte:count-as-id='cnt__^step.cnt']" from="step" level="any" format="(a)"/>
</xsl:template>

<xsl:template name="t-numbering-step2">
  <xsl:number count="*[@_gte:count-as-id='cnt__^step2.cnt']" from="step2" level="any" format="1"/>
</xsl:template>

<xsl:template name="t-numbering-step3-ext">
  <xsl:param name="fmt"/>
  <xsl:choose>
    <xsl:when test="ancestor::step3">
      <xsl:number count="*[@_gte:count-as-id='cnt__^step3.cnt']" from="step3[not(ancestor::step3)]" level="any" format="{$fmt}"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:number count="*[@_gte:count-as-id='cnt__^step3.cnt' and not(ancestor::step3)]" level="any" format="{$fmt}"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template match="step2" mode="styler_numbering" priority="0">
  <xsl:call-template name="t-numbering-step"/>
</xsl:template>
 
<xsl:template match="step3" mode="styler_numbering" priority="0">
  <xsl:call-template name="t-numbering-step2"/>
</xsl:template>

<xsl:template match="step4" mode="styler_numbering" priority="0">
  <xsl:call-template name="t-numbering-step3-ext">
    <xsl:with-param name="fmt" select="'a'"/>
  </xsl:call-template>
</xsl:template>

<xsl:template match="*" mode="styler_numbering">
  <xsl:param name="do-qmark" select="'yes'"/>
  <xsl:if test="$do-qmark='yes'">
     <xsl:value-of select="'?'"/>
  </xsl:if>
</xsl:template>

</xsl:stylesheet>
