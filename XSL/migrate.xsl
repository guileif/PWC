<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:simg="java:net.sf.docbook.saxon.ImageIntrinsics"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:ximg="xaln://com.nwalsh.xalan.ImageIntrinsics" xmlns="http://www.w3.org/1999/xhtml"
   xmlns:exslt="http://exslt.org/common" xmlns:_acl="java:com.arbortext.epic.Acl"
   xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:_="http://www.pwc.ca/namespace/doctypes/emipc"
   xmlns:_dtd="http://www.arbortext.com/namespace/Styler/UserElements"
   xmlns:atidlm="http://www.arbortext.com/namespace/atidlm"
   xmlns:_2="http://www.pwc.ca/namespace/doctypes/jmtosmigrate"
   xmlns:ch="http://www.arbortext.com/namespace/chunker" xmlns:saxon="http://saxon.sf.net/"
   xmlns:_5="http://www.pwc.ca/namespace/doctypes/ipc"
   xmlns:_gte="http://www.arbortext.com/namespace/Styler/GeneratedTextElements"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xmlns:_sfe="http://www.arbortext.com/namespace/Styler/StylerFormattingElements"
   xmlns:_js="java:com.arbortext.epic.internal.js.JavaScript"
   xmlns:_3="http://www.pwc.ca/namespace/doctypes/migrate"
   xmlns:_ufe="http://www.arbortext.com/namespace/Styler/UserFormattingElements" version="1.0"
   exclude-result-prefixes="_ atidlm xml _2 ch saxon _5 xsi _js _3 #default exslt msxsl _dtd _ufe _sfe _gte simg ximg _acl">

   <xsl:output encoding="UTF-8" method="html" omit-xml-declaration="yes" indent="yes"/>

   <xsl:variable name="doctype" select="'migrate'"/>
   
   <xsl:include href="base.xsl"/>
   <xsl:include href="process.xsl"/>

   <!--Style template for Context: limits/annot-->
   <xsl:template name="__style-for_annot.2litsot121">
      <xsl:text> .x-annot-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: limits/annot-->
   <xsl:template match="limits/annot" priority="1">
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-annot-1-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: limits/annot-->
   <xsl:template match="limits/annot" mode="expand-gentext" priority="1">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: limits/annot-->
   <xsl:template match="limits/annot" mode="set-countas" priority="1">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: annot-->
   <xsl:template name="__style-for_annot.2antot52">
      <xsl:text> .x-annot-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: annot-->
   <xsl:template match="annot" priority="0">
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-annot-2-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: annot-->
   <xsl:template match="annot" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: annot-->
   <xsl:template match="annot" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: at-length-->
   <xsl:template name="__style-for_at-length.1">
      <xsl:text> .x-at-length-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: at-length-->
   <xsl:template match="at-length" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: at-length-->
   <xsl:template match="at-length" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: at-length-->
   <xsl:template match="at-length" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: build-spec-->
   <xsl:template name="__style-for_build-spec.1">
      <xsl:text> .x-build-spec-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: build-spec-->
   <xsl:template match="build-spec" priority="0">
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-build-spec-1-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: build-spec-->
   <xsl:template match="build-spec" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <xsl:text>BS</xsl:text>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: build-spec-->
   <xsl:template match="build-spec" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>
   
   <!--Template for Context: _ufe:cir-title-->
   <xsl:template match="_ufe:cir-title" priority="0">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x--ufe-cir-title-3-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Style template for Context: consumables-->
   <xsl:template name="__style-for_consumables.1">
      <xsl:text> .x-consumables-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; } .x-consumables-1-1 {}</xsl:text>
   </xsl:template>

   <!--Template for Context: consumables-->
   <xsl:template match="consumables" priority="0">
      <xsl:variable name="foClass">formalBlock</xsl:variable>
      <xsl:variable name="blockness">block</xsl:variable>
      <xsl:variable name="startnew"/>
      <xsl:variable name="newpageset">#noChange</xsl:variable>
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-consumables-1-0</xsl:text>
            <xsl:if test="@empty and string(@empty)='YES'"> x-consumables-1-1</xsl:if>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:variable name="Breaks-chunkFilenameXPath"/>
         <xsl:variable name="Breaks-persistentFilename"/>
         <xsl:if test="($Breaks-persistentFilename='yes') and ($Breaks-chunkFilenameXPath!='')">
            <xsl:variable name="chunkFilename"/>
            <xsl:if test="$chunkFilename!=''">
               <xsl:attribute name="ch:filename">
                  <xsl:value-of select="$chunkFilename"/>
               </xsl:attribute>
               <xsl:attribute name="ch:namepriority">0</xsl:attribute>
            </xsl:if>
         </xsl:if>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: consumables-->
   <xsl:template match="consumables" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:choose>
            <xsl:when test="@empty and string(@empty)='YES'">
               <!--AddBefore Condition #1-->
               <xsl:if test="not(@_gte:Gentext-Expanded)">
                  <_sfe:BeforeOrAfterText>
                     <_ufe:consumables-title/>
                     <_ufe:not-applicable/>
                  </_sfe:BeforeOrAfterText>
               </xsl:if>
            </xsl:when>
            <xsl:otherwise>
               <xsl:if test="not(@_gte:Gentext-Expanded)">
                  <_sfe:BeforeOrAfterText>
                     <_ufe:consumables-title/>
                  </_sfe:BeforeOrAfterText>
               </xsl:if>
            </xsl:otherwise>
         </xsl:choose>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: consumables-->
   <xsl:template match="consumables" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Template for Context: _ufe:eipc-title-->
   <xsl:template match="_ufe:eipc-title" priority="0">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x--ufe-eipc-title-3-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Template for Context: _ufe:em-title-->
   <xsl:template match="_ufe:em-title" priority="0">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x--ufe-em-title-3-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Style template for Context: fandc-proc-->
   <xsl:template name="__style-for_fandc-proc.1">
      <xsl:text> .x-fandc-proc-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: fandc-proc-->
   <xsl:template match="fandc-proc" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: fandc-proc-->
   <xsl:template match="fandc-proc" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: fandc-proc-->
   <xsl:template match="fandc-proc" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!-- *** Edited Source for the 'figure[descendant::graphic]' context follows ***-->
   <!--Style template for Context: figure[descendant::graphic]-->
   <xsl:template name="__style-for_figure.2firere271">
      <xsl:text> .x-figure-1-0
{margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top:
8pt; }</xsl:text>
   </xsl:template>
   <!--Template for Context: figure[descendant::graphic]-->
   <xsl:template match="figure[descendant::graphic]" priority="1">
      <div style="display:none;">
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-figure-1-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <xsl:attribute name="id">
            <xsl:text>styler-id</xsl:text>
            <xsl:apply-templates mode="set-id" select="."/>
         </xsl:attribute>
         <!--Process this element's content-->
         <xsl:apply-templates> </xsl:apply-templates>
      </div>
      <a>
         <xsl:attribute name="href">
            <xsl:text>#styler-id</xsl:text>
            <xsl:apply-templates mode="set-id" select="."> </xsl:apply-templates>
         </xsl:attribute>
         <xsl:attribute name="onClick">
            <xsl:text>displayGraphics('</xsl:text>
            <xsl:text>styler-id</xsl:text>
            <xsl:apply-templates mode="set-id" select="."> </xsl:apply-templates>
            <xsl:text>');</xsl:text>
         </xsl:attribute>
      </a>
   </xsl:template>
   <!--Gentext template for Context: figure[descendant::graphic]-->
   <xsl:template match="figure[descendant::graphic]" mode="expand-gentext" priority="1">
      <xsl:copy>
         <xsl:apply-templates mode="expand-gentext" select="@*|node()"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: figure[descendant::graphic]-->
   <xsl:template match="figure[descendant::graphic]" mode="set-countas" priority="1">
      <xsl:copy>
         <xsl:apply-templates mode="set-countas" select="@*|node()"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: figure-->
   <xsl:template name="__style-for_figure.2firere62">
      <xsl:text> .x-figure-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: figure-->
   <xsl:template match="figure" priority="0">
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-figure-2-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: figure-->
   <xsl:template match="figure" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: figure-->
   <xsl:template match="figure" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: fits-->
   <xsl:template name="__style-for_fits.1">
      <xsl:text> .x-fits-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: fits-->
   <xsl:template match="fits" priority="0">
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-fits-1-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: fits-->
   <xsl:template match="fits" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: fits-->
   <xsl:template match="fits" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: fits-and-clears-->
   <xsl:template name="__style-for_fits-and-clears.1">
      <xsl:text> .x-fits-and-clears-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: fits-and-clears-->
   <xsl:template match="fits-and-clears" priority="0">
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-fits-and-clears-1-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: fits-and-clears-->
   <xsl:template match="fits-and-clears" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: fits-and-clears-->
   <xsl:template match="fits-and-clears" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: fix-equip-list-->
   <xsl:template name="__style-for_fix-equip-list.1">
      <xsl:text> .x-fix-equip-list-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: fix-equip-list-->
   <xsl:template match="fix-equip-list" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: fix-equip-list-->
   <xsl:template match="fix-equip-list" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: fix-equip-list-->
   <xsl:template match="fix-equip-list" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: fixtures-and-equipment-->
   <xsl:template name="__style-for_fixtures-and-equipment.1">
      <xsl:text> .x-fixtures-and-equipment-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; } .x-fixtures-and-equipment-1-1 {}</xsl:text>
   </xsl:template>

   <!--Template for Context: fixtures-and-equipment-->
   <xsl:template match="fixtures-and-equipment" priority="0">
      <xsl:variable name="foClass">formalBlock</xsl:variable>
      <xsl:variable name="blockness">block</xsl:variable>
      <xsl:variable name="startnew"/>
      <xsl:variable name="newpageset">#noChange</xsl:variable>
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-fixtures-and-equipment-1-0</xsl:text>
            <xsl:if test="@empty and string(@empty)='YES'"> x-fixtures-and-equipment-1-1</xsl:if>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:variable name="Breaks-chunkFilenameXPath"/>
         <xsl:variable name="Breaks-persistentFilename"/>
         <xsl:if test="($Breaks-persistentFilename='yes') and ($Breaks-chunkFilenameXPath!='')">
            <xsl:variable name="chunkFilename"/>
            <xsl:if test="$chunkFilename!=''">
               <xsl:attribute name="ch:filename">
                  <xsl:value-of select="$chunkFilename"/>
               </xsl:attribute>
               <xsl:attribute name="ch:namepriority">0</xsl:attribute>
            </xsl:if>
         </xsl:if>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: fixtures-and-equipment-->
   <xsl:template match="fixtures-and-equipment" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:choose>
            <xsl:when test="@empty and string(@empty)='YES'">
               <!--AddBefore Condition #1-->
               <xsl:if test="not(@_gte:Gentext-Expanded)">
                  <_sfe:BeforeOrAfterText>
                     <_ufe:fixequ-title/>
                     <_ufe:not-applicable/>
                  </_sfe:BeforeOrAfterText>
               </xsl:if>
            </xsl:when>
            <xsl:otherwise>
               <xsl:if test="not(@_gte:Gentext-Expanded)">
                  <_sfe:BeforeOrAfterText>
                     <_ufe:fixequ-title/>
                  </_sfe:BeforeOrAfterText>
               </xsl:if>
            </xsl:otherwise>
         </xsl:choose>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: fixtures-and-equipment-->
   <xsl:template match="fixtures-and-equipment" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: general-->
   <xsl:template name="__style-for_general.1">
      <xsl:text> .x-general-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: general-->
   <xsl:template match="general" priority="0">
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-general-1-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: general-->
   <xsl:template match="general" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <_ufe:general-title/>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: general-->
   <xsl:template match="general" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Template for Context: _ufe:glossary-title-->
   <xsl:template match="_ufe:glossary-title" priority="0">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x--ufe-glossary-title-4-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!-- *** Edited Source for the 'graphic' context follows ***-->
   <!--Style template for Context: graphic-->
   <xsl:template name="__style-for_graphic.1">
      <xsl:text> .x-graphic-1-0 {margin-left:
0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; } .x-graphic-1-1
{border-bottom: 2px solid #000000;} .x-graphic-1-2 {}</xsl:text>
   </xsl:template>
   <!--Template for Context: graphic-->
   <xsl:template match="graphic" priority="0">
      <xsl:param name="hidden" select="'yes'"/>
      <!--Dynamically determine the fo-class-->
      <xsl:variable name="foClass">
         <xsl:choose>
            <xsl:when test="not(@size) or (@size and string(@size)!='big')">hidden</xsl:when>
            <xsl:when test="count(following-sibling::graphic[@size='big']) &gt; 0">graphic-block</xsl:when>
            <xsl:otherwise>graphic-block</xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="blockness">block</xsl:variable>
      <xsl:variable name="hiddenness">
         <xsl:choose>
            <xsl:when test="not(@size) or (@size and string(@size)!='big')">yes</xsl:when>
            <xsl:when test="count(following-sibling::graphic[@size='big']) &gt; 0">no</xsl:when>
            <xsl:otherwise>no</xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="startnew"/>
      <xsl:variable name="newpageset">#noChange</xsl:variable>
      <xsl:variable name="fo-class">
         <xsl:choose>
            <xsl:when test="$hiddenness='yes'">
               <xsl:text>hidden-</xsl:text>
               <xsl:value-of select="$blockness"/>
            </xsl:when>
            <xsl:when test="$hiddenness='no' and starts-with($foClass,'hidden-')">
               <xsl:value-of select="substring($foClass,8)"/>
            </xsl:when>
            <xsl:when test="true()">
               <!--This is the "otherwise" clause, but there may be no when's-->
               <xsl:value-of select="$foClass"/>
            </xsl:when>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="given-lre-override-name"/>
      <xsl:variable name="lre-override-name">
         <xsl:call-template name="determine-lre-override-name">
            <xsl:with-param name="given-lre-override-name" select="$given-lre-override-name"/>
            <xsl:with-param name="fo-class" select="$fo-class"/>
         </xsl:call-template>
      </xsl:variable>
      <!--Execute the appropriate code for the dynamically determined fo-class-->
      <xsl:choose>
         <xsl:when test="$fo-class='hidden-block'">
            <xsl:if test="$hidden=no">
               <div>
                  <!--Emit class values to reflect conditions-->
                  <xsl:attribute name="class">
                     <xsl:text> x-graphic-1-0</xsl:text>
                     <xsl:if test="count(following-sibling::graphic[@size='big']) &gt; 0"> x-graphic-1-1</xsl:if>
                     <xsl:if test="not(@size) or (@size and string(@size)!='big')"> x-graphic-1-2</xsl:if>
                  </xsl:attribute>
                  <xsl:if test="@xml:lang">
                     <xsl:attribute name="lang">
                        <xsl:call-template name="return-lang-applying-language-map">
                           <xsl:with-param name="doclang" select="@xml:lang"/>
                        </xsl:call-template>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:copy-of select="@ch:*"/>
                  <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap"
                     select="@dmp:*"/>
                  <xsl:variable name="Breaks-chunkFilenameXPath"/>
                  <xsl:variable name="Breaks-persistentFilename"/>
                  <xsl:if
                     test="($Breaks-persistentFilename='yes') and ($Breaks-chunkFilenameXPath!='')">
                     <xsl:variable name="chunkFilename"/>
                     <xsl:if test="$chunkFilename!=''">
                        <xsl:attribute name="ch:filename">
                           <xsl:value-of select="$chunkFilename"/>
                        </xsl:attribute>
                        <xsl:attribute name="ch:namepriority">0</xsl:attribute>
                     </xsl:if>
                  </xsl:if>
                  <xsl:if test="@xml:lang">
                     <xsl:attribute name="lang">
                        <xsl:call-template name="return-lang-applying-language-map">
                           <xsl:with-param name="doclang" select="@xml:lang"/>
                        </xsl:call-template>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:call-template name="maybe-set-id"> </xsl:call-template>
                  <!--Suppress element contents (but not gentext) unless unhidden-->
                  <xsl:choose>
                     <xsl:when test="$hidden='no'">
                        <xsl:apply-templates> </xsl:apply-templates>
                     </xsl:when>
                     <xsl:otherwise>
                        <xsl:apply-templates select="_sfe:BeforeOrAfterText"/>
                     </xsl:otherwise>
                  </xsl:choose>
               </div>
            </xsl:if>
         </xsl:when>
         <xsl:when test="$fo-class='block'">
            <div>
               <!--Emit class values to reflect conditions-->
               <xsl:attribute name="class">
                  <xsl:text> x-graphic-1-0</xsl:text>
                  <xsl:if test="count(following-sibling::graphic[@size='big']) &gt; 0"> x-graphic-1-1</xsl:if>
                  <xsl:if test="not(@size) or (@size and string(@size)!='big')"> x-graphic-1-2</xsl:if>
               </xsl:attribute>
               <xsl:if test="count(following-sibling::graphic[@size='big']) &gt; 0">
                  <xsl:attribute name="style">margin-bottom: 8pt; border-bottom: 2px solid #000000;</xsl:attribute>
               </xsl:if>
               <xsl:if test="@xml:lang">
                  <xsl:attribute name="lang">
                     <xsl:call-template name="return-lang-applying-language-map">
                        <xsl:with-param name="doclang" select="@xml:lang"/>
                     </xsl:call-template>
                  </xsl:attribute>
               </xsl:if>
               <xsl:copy-of select="@ch:*"/>
               <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap"
                  select="@dmp:*"/>
               <xsl:variable name="Breaks-chunkFilenameXPath"/>
               <xsl:variable name="Breaks-persistentFilename"/>
               <xsl:if
                  test="($Breaks-persistentFilename='yes') and ($Breaks-chunkFilenameXPath!='')">
                  <xsl:variable name="chunkFilename"/>
                  <xsl:if test="$chunkFilename!=''">
                     <xsl:attribute name="ch:filename">
                        <xsl:value-of select="$chunkFilename"/>
                     </xsl:attribute>
                     <xsl:attribute name="ch:namepriority">0</xsl:attribute>
                  </xsl:if>
               </xsl:if>
               <xsl:if test="@xml:lang">
                  <xsl:attribute name="lang">
                     <xsl:call-template name="return-lang-applying-language-map">
                        <xsl:with-param name="doclang" select="@xml:lang"/>
                     </xsl:call-template>
                  </xsl:attribute>
               </xsl:if>
               <xsl:call-template name="maybe-set-id"> </xsl:call-template>
               <!--Process this element's content-->
               <xsl:apply-templates> </xsl:apply-templates>
            </div>
         </xsl:when>
         <xsl:when test="$fo-class='graphic-block'">
            <div>
               <!--Emit class values to reflect conditions-->
               <xsl:attribute name="class">
                  <xsl:text> x-graphic-1-0</xsl:text>
                  <xsl:if test="count(following-sibling::graphic[@size='big']) &gt; 0"> x-graphic-1-1</xsl:if>
                  <xsl:if test="not(@size) or (@size and string(@size)!='big')"> x-graphic-1-2</xsl:if>
               </xsl:attribute>
               <xsl:if test="count(following-sibling::graphic[@size='big']) &gt; 0">
                  <xsl:attribute name="style">margin-bottom: 8pt; border-bottom: 2px solid #000000;</xsl:attribute>
               </xsl:if>
               <xsl:if test="@xml:lang">
                  <xsl:attribute name="lang">
                     <xsl:call-template name="return-lang-applying-language-map">
                        <xsl:with-param name="doclang" select="@xml:lang"/>
                     </xsl:call-template>
                  </xsl:attribute>
               </xsl:if>
               <xsl:copy-of select="@ch:*"/>
               <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap"
                  select="@dmp:*"/>
               <xsl:variable name="Breaks-chunkFilenameXPath"/>
               <xsl:variable name="Breaks-persistentFilename"/>
               <xsl:if
                  test="($Breaks-persistentFilename='yes') and ($Breaks-chunkFilenameXPath!='')">
                  <xsl:variable name="chunkFilename"/>
                  <xsl:if test="$chunkFilename!=''">
                     <xsl:attribute name="ch:filename">
                        <xsl:value-of select="$chunkFilename"/>
                     </xsl:attribute>
                     <xsl:attribute name="ch:namepriority">0</xsl:attribute>
                  </xsl:if>
               </xsl:if>
               <xsl:if test="@xml:lang">
                  <xsl:attribute name="lang">
                     <xsl:call-template name="return-lang-applying-language-map">
                        <xsl:with-param name="doclang" select="@xml:lang"/>
                     </xsl:call-template>
                  </xsl:attribute>
               </xsl:if>
               <xsl:choose>
                  <xsl:when xmlns:ati3d="http://www.arbortext.com/namespace/graphics"
                     test="@ati3d:viewer">
                     <!--this graphic is a 3D graphic-->
                     <xsl:variable name="viewer" select="@ati3d:viewer"/>
                     <xsl:variable name="generated-idval">
                        <xsl:value-of select="concat($viewer,'_')"/>
                        <xsl:apply-templates mode="set-id" select="."> </xsl:apply-templates>
                     </xsl:variable>
                     <xsl:variable name="idval">
                        <xsl:value-of select="translate($generated-idval,'.','_')"/>
                     </xsl:variable>
                     <span id="{$idval}">
                        <xsl:variable name="specified-idval" select="string(@_gte:id)"/>
                        <span>
                           <xsl:if test="$specified-idval!=''">
                              <xsl:attribute name="id">
                                 <xsl:value-of select="$specified-idval"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:variable name="filename">
                              <xsl:value-of select="@negnumber"/>
                           </xsl:variable>
                           <span class="viewpath">
                              <xsl:value-of select="translate($filename,'\','/')"/>
                           </span>
                           <xsl:if test="@ati3d:links">
                              <span class="viewlinks">
                                 <xsl:value-of select="@ati3d:links"/>
                              </span>
                           </xsl:if>
                        </span>
                        <xsl:variable name="annotation" select="@ati3d:view"/>
                        <xsl:variable name="height"/>
                        <xsl:variable name="width"/>
                        <script>    
                       <xsl:value-of select="$viewer"/><xsl:text>_Insert('</xsl:text><xsl:value-of select="$idval"/><xsl:text>', '</xsl:text><xsl:value-of select="$width"/><xsl:text>', '</xsl:text><xsl:value-of select="$height"/><xsl:text>', '</xsl:text><xsl:value-of select="$annotation"/><xsl:text>', '</xsl:text><xsl:call-template name="get-downloaduri"><xsl:with-param name="viewer" select="$viewer"/></xsl:call-template><xsl:text>');</xsl:text>
						</script>
                     </span>
                  </xsl:when>
                  <xsl:otherwise>
                     <!--this is a "regular" graphic-->
                     <img alt="Graphic">
                        <xsl:if test="@xml:lang">
                           <xsl:attribute name="lang">
                              <xsl:call-template name="return-lang-applying-language-map">
                                 <xsl:with-param name="doclang" select="@xml:lang"/>
                              </xsl:call-template>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:copy-of select="@ch:*"/>
                        <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap"
                           select="@dmp:*"/>
                        <xsl:variable name="Breaks-chunkFilenameXPath"/>
                        <xsl:variable name="Breaks-persistentFilename"/>
                        <xsl:if
                           test="($Breaks-persistentFilename='yes') and ($Breaks-chunkFilenameXPath!='')">
                           <xsl:variable name="chunkFilename"/>
                           <xsl:if test="$chunkFilename!=''">
                              <xsl:attribute name="ch:filename">
                                 <xsl:value-of select="$chunkFilename"/>
                              </xsl:attribute>
                              <xsl:attribute name="ch:namepriority">0</xsl:attribute>
                           </xsl:if>
                        </xsl:if>
                        <xsl:if test="@xml:lang">
                           <xsl:attribute name="lang">
                              <xsl:call-template name="return-lang-applying-language-map">
                                 <xsl:with-param name="doclang" select="@xml:lang"/>
                              </xsl:call-template>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:variable name="filename">
                           <xsl:value-of select="@negnumber"/>
                        </xsl:variable>
                        <xsl:variable name="graphic-prop-filename">
                           <xsl:if test="$graphics-path!=''">
                              <xsl:call-template name="substring-before-last">
                                 <xsl:with-param name="str" select="$graphics-path"/>
                                 <xsl:with-param name="delim" select="'/'"/>
                              </xsl:call-template>
                              <xsl:text>/</xsl:text>
                           </xsl:if>
                           <xsl:value-of select="$filename"/>
                        </xsl:variable>
                        <xsl:attribute name="src">
                           <xsl:value-of select="string($filename)"/>
                        </xsl:attribute>
                        <xsl:attribute name="style">max-width: 100%; </xsl:attribute>
                        <xsl:call-template name="maybe-set-id"/>
                        <!--Process this element's content-->
                        <xsl:apply-templates> </xsl:apply-templates>
                     </img>
                  </xsl:otherwise>
               </xsl:choose>
               <!--Source edit to add negnum and annot to graphic pop-up window.-->
               <xsl:if test="@annot">
                  <div>
                     <xsl:attribute name="style">margin-bottom: 8pt;</xsl:attribute>
                     <xsl:value-of select="@annot"/>
                  </div>
               </xsl:if>
               <xsl:if test="@negnum">
                  <div>
                     <xsl:attribute name="style">margin-bottom: 8pt;</xsl:attribute>
                     <xsl:value-of select="@negnum"/>
                  </div>
               </xsl:if>
            </div>
         </xsl:when>
      </xsl:choose>
   </xsl:template>
   <!--Gentext template for Context: graphic-->
   <xsl:template match="graphic" mode="expand-gentext" priority="0">
      <xsl:choose>
         <xsl:when test="not(@size) or (@size and string(@size)!='big')">
            <!--AddBefore Condition #2-->
            <xsl:if test="not(@_gte:Gentext-Expanded)">
               <_sfe:BeforeOrAfterText/>
            </xsl:if>
         </xsl:when>
         <xsl:otherwise>
            <xsl:if test="not(@_gte:Gentext-Expanded)">
               <_sfe:BeforeOrAfterText>
                  <_ufe:block-prespace>
                     <xsl:text>(SHEET X OF Y)</xsl:text>
                  </_ufe:block-prespace>
               </_sfe:BeforeOrAfterText>
            </xsl:if>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates mode="expand-gentext" select="@*"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:apply-templates mode="expand-gentext" select="* | text() | processing-instruction()"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: graphic-->
   <xsl:template match="graphic" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates mode="set-countas" select="@*|node()"> </xsl:apply-templates>
      </xsl:copy>
   </xsl:template>

   <!--Template for Context: _ufe:howtouse-title-->
   <xsl:template match="_ufe:howtouse-title" priority="0">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x--ufe-howtouse-title-3-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Style template for Context: ifr-->
   <xsl:template name="__style-for_ifr.1">
      <xsl:text> .x-ifr-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: ifr-->
   <xsl:template match="ifr" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: ifr-->
   <xsl:template match="ifr" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: ifr-->
   <xsl:template match="ifr" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: imp-->
   <xsl:template name="__style-for_imp.1">
      <xsl:text> .x-imp-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: imp-->
   <xsl:template match="imp" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: imp-->
   <xsl:template match="imp" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: imp-->
   <xsl:template match="imp" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: atidlm:inclusion-->
   <xsl:template name="__style-for_atidlm-inclusion.1">
      <xsl:text> .x-atidlm-inclusion-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: atidlm:inclusion-->
   <xsl:template match="atidlm:inclusion" priority="0">
      <span>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-atidlm-inclusion-1-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </span>
   </xsl:template>

   <!--Gentext template for Context: atidlm:inclusion-->
   <xsl:template match="atidlm:inclusion" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: atidlm:inclusion-->
   <xsl:template match="atidlm:inclusion" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Template for Context: _ufe:intro-title-->
   <xsl:template match="_ufe:intro-title" priority="0">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x--ufe-intro-title-3-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Style template for Context: limits-->
   <xsl:template name="__style-for_limits.1">
      <xsl:text> .x-limits-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: limits-->
   <xsl:template match="limits" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: limits-->
   <xsl:template match="limits" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>
   
   <!--Set count-as pass template for Context: limits-->
   <xsl:template match="limits" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: atidlm:linkcontent-->
   <xsl:template name="__style-for_atidlm-linkcontent.1">
      <xsl:text> .x-atidlm-linkcontent-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: atidlm:linkcontent-->
   <xsl:template match="atidlm:linkcontent" priority="0">
      <span>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-atidlm-linkcontent-1-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </span>
   </xsl:template>

   <!--Gentext template for Context: atidlm:linkcontent-->
   <xsl:template match="atidlm:linkcontent" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: atidlm:linkcontent-->
   <xsl:template match="atidlm:linkcontent" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: mating-part-->
   <xsl:template name="__style-for_mating-part.1">
      <xsl:text> .x-mating-part-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: mating-part-->
   <xsl:template match="mating-part" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: mating-part-->
   <xsl:template match="mating-part" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: mating-part-->
   <xsl:template match="mating-part" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: max-->
   <xsl:template name="__style-for_max.1">
      <xsl:text> .x-max-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: max-->
   <xsl:template match="max" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: max-->
   <xsl:template match="max" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: max-->
   <xsl:template match="max" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: met-->
   <xsl:template name="__style-for_met.1">
      <xsl:text> .x-met-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: met-->
   <xsl:template match="met" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: met-->
   <xsl:template match="met" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: met-->
   <xsl:template match="met" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: atidlm:metadata-->
   <xsl:template name="__style-for_atidlm-metadata.1">
      <xsl:text> .x-atidlm-metadata-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: atidlm:metadata-->
   <xsl:template match="atidlm:metadata" priority="0">
      <span>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-atidlm-metadata-1-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </span>
   </xsl:template>

   <!--Gentext template for Context: atidlm:metadata-->
   <xsl:template match="atidlm:metadata" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: atidlm:metadata-->
   <xsl:template match="atidlm:metadata" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: min-->
   <xsl:template name="__style-for_min.1">
      <xsl:text> .x-min-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: min-->
   <xsl:template match="min" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: min-->
   <xsl:template match="min" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: min-->
   <xsl:template match="min" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: mm-fits-->
   <xsl:template name="__style-for_mm-fits.1">
      <xsl:text> .x-mm-fits-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: mm-fits-->
   <xsl:template match="mm-fits" priority="0">
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-mm-fits-1-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: mm-fits-->
   <xsl:template match="mm-fits" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: mm-fits-->
   <xsl:template match="mm-fits" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: name-->
   <xsl:template name="__style-for_name.1">
      <xsl:text> .x-name-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: name-->
   <xsl:template match="name" priority="0">
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-name-1-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: name-->
   <xsl:template match="name" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: name-->
   <xsl:template match="name" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: nomen-->
   <xsl:template name="__style-for_nomen.1">
      <xsl:text> .x-nomen-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: nomen-->
   <xsl:template match="nomen" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: nomen-->
   <xsl:template match="nomen" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: nomen-->
   <xsl:template match="nomen" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: module/note-->
   <xsl:template name="__style-for_note.12molete111">
      <xsl:text> .x-note-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; margin-left: 61pt; text-indent: -43pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: module/note-->
   <xsl:template match="module/note" priority="11">
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-note-1-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: module/note-->
   <xsl:template match="module/note" mode="expand-gentext" priority="11">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <span style="font-weight: bold; text-decoration: underline; ">
                  <xsl:text>NOTE</xsl:text>
               </span>
               <xsl:text>:&#x2003;</xsl:text>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: module/note-->
   <xsl:template match="module/note" mode="set-countas" priority="11">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: subtask/note-->
   <xsl:template name="__style-for_note.12suaste122">
      <xsl:text> .x-note-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; margin-left: 61pt; text-indent: -43pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: subtask/note-->
   <xsl:template match="subtask/note" priority="10">
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-note-2-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: subtask/note-->
   <xsl:template match="subtask/note" mode="expand-gentext" priority="10">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <span style="font-weight: bold; text-decoration: underline; ">
                  <xsl:text>NOTE</xsl:text>
               </span>
               <xsl:text>:&#x2003;</xsl:text>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: subtask/note-->
   <xsl:template match="subtask/note" mode="set-countas" priority="10">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: task/note-->
   <xsl:template name="__style-for_note.12tanote93">
      <xsl:text> .x-note-3-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; margin-left: 61pt; text-indent: -43pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: task/note-->
   <xsl:template match="task/note" priority="9">
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-note-3-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: task/note-->
   <xsl:template match="task/note" mode="expand-gentext" priority="9">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <span style="font-weight: bold; text-decoration: underline; ">
                  <xsl:text>NOTE</xsl:text>
               </span>
               <xsl:text>:&#x2003;</xsl:text>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: task/note-->
   <xsl:template match="task/note" mode="set-countas" priority="9">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: n-para/note-->
   <xsl:template name="__style-for_note.12n-rate114">
      <xsl:text> .x-note-4-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; margin-left: 70pt; text-indent: -45pt; } .x-note-4-1 {}</xsl:text>
   </xsl:template>

   <!--Template for Context: n-para/note-->
   <xsl:template match="n-para/note" priority="8">
      <xsl:variable name="foClass">block</xsl:variable>
      <xsl:variable name="blockness">block</xsl:variable>
      <xsl:variable name="startnew"/>
      <xsl:variable name="newpageset">#noChange</xsl:variable>
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-note-4-0</xsl:text>
            <xsl:if test="@nbr"> x-note-4-1</xsl:if>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:variable name="Breaks-chunkFilenameXPath"/>
         <xsl:variable name="Breaks-persistentFilename"/>
         <xsl:if test="($Breaks-persistentFilename='yes') and ($Breaks-chunkFilenameXPath!='')">
            <xsl:variable name="chunkFilename"/>
            <xsl:if test="$chunkFilename!=''">
               <xsl:attribute name="ch:filename">
                  <xsl:value-of select="$chunkFilename"/>
               </xsl:attribute>
               <xsl:attribute name="ch:namepriority">0</xsl:attribute>
            </xsl:if>
         </xsl:if>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: n-para/note-->
   <xsl:template match="n-para/note" mode="expand-gentext" priority="8">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:choose>
            <xsl:when test="@nbr">
               <!--AddBefore Condition #1-->
               <xsl:if test="not(@_gte:Gentext-Expanded)">
                  <_sfe:BeforeOrAfterText>
                     <span style="font-weight: bold; text-decoration: underline; ">
                        <xsl:text>NOTE</xsl:text>
                     </span>
                     <xsl:text>: </xsl:text>
                     <xsl:value-of select="@nbr"/>
                     <xsl:text>.&#x2003;</xsl:text>
                  </_sfe:BeforeOrAfterText>
               </xsl:if>
            </xsl:when>
            <xsl:otherwise>
               <xsl:if test="not(@_gte:Gentext-Expanded)">
                  <_sfe:BeforeOrAfterText>
                     <span style="font-weight: bold; text-decoration: underline; ">
                        <xsl:text>NOTE</xsl:text>
                     </span>
                     <xsl:text>:&#x2003;</xsl:text>
                  </_sfe:BeforeOrAfterText>
               </xsl:if>
            </xsl:otherwise>
         </xsl:choose>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: n-para/note-->
   <xsl:template match="n-para/note" mode="set-countas" priority="8">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: procedure/note-->
   <xsl:template name="__style-for_note.12predte145">
      <xsl:text> .x-note-5-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; margin-left: 63pt; text-indent: -43pt; } .x-note-5-1 {margin-left: 76pt; text-indent: -57pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: procedure/note-->
   <xsl:template match="procedure/note" priority="7">
      <xsl:variable name="foClass">block</xsl:variable>
      <xsl:variable name="blockness">block</xsl:variable>
      <xsl:variable name="startnew"/>
      <xsl:variable name="newpageset">#noChange</xsl:variable>
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-note-5-0</xsl:text>
            <xsl:if test="@nbr"> x-note-5-1</xsl:if>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:variable name="Breaks-chunkFilenameXPath"/>
         <xsl:variable name="Breaks-persistentFilename"/>
         <xsl:if test="($Breaks-persistentFilename='yes') and ($Breaks-chunkFilenameXPath!='')">
            <xsl:variable name="chunkFilename"/>
            <xsl:if test="$chunkFilename!=''">
               <xsl:attribute name="ch:filename">
                  <xsl:value-of select="$chunkFilename"/>
               </xsl:attribute>
               <xsl:attribute name="ch:namepriority">0</xsl:attribute>
            </xsl:if>
         </xsl:if>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: procedure/note-->
   <xsl:template match="procedure/note" mode="expand-gentext" priority="7">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:choose>
            <xsl:when test="@nbr">
               <!--AddBefore Condition #1-->
               <xsl:if test="not(@_gte:Gentext-Expanded)">
                  <_sfe:BeforeOrAfterText>
                     <span style="font-weight: bold; text-decoration: underline; ">
                        <xsl:text>NOTE</xsl:text>
                     </span>
                     <xsl:text>: </xsl:text>
                     <xsl:value-of select="@nbr"/>
                     <xsl:text>.&#x2003;</xsl:text>
                  </_sfe:BeforeOrAfterText>
               </xsl:if>
            </xsl:when>
            <xsl:otherwise>
               <xsl:if test="not(@_gte:Gentext-Expanded)">
                  <_sfe:BeforeOrAfterText>
                     <span style="font-weight: bold; text-decoration: underline; ">
                        <xsl:text>NOTE</xsl:text>
                     </span>
                     <xsl:text>:&#x2003;</xsl:text>
                  </_sfe:BeforeOrAfterText>
               </xsl:if>
            </xsl:otherwise>
         </xsl:choose>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: procedure/note-->
   <xsl:template match="procedure/note" mode="set-countas" priority="7">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: fandc/note-->
   <xsl:template name="__style-for_note.12facnte106">
      <xsl:text> .x-note-6-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: fandc/note-->
   <xsl:template match="fandc/note" priority="6">
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-note-6-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: fandc/note-->
   <xsl:template match="fandc/note" mode="expand-gentext" priority="6">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: fandc/note-->
   <xsl:template match="fandc/note" mode="set-countas" priority="6">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: spec-assem/note-->
   <xsl:template name="__style-for_note.12sp-ate157">
      <xsl:text> .x-note-7-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: spec-assem/note-->
   <xsl:template match="spec-assem/note" priority="5">
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-note-7-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: spec-assem/note-->
   <xsl:template match="spec-assem/note" mode="expand-gentext" priority="5">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: spec-assem/note-->
   <xsl:template match="spec-assem/note" mode="set-countas" priority="5">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: spring-pressure/note-->
   <xsl:template name="__style-for_note.12spngte208">
      <xsl:text> .x-note-8-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: spring-pressure/note-->
   <xsl:template match="spring-pressure/note" priority="4">
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-note-8-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: spring-pressure/note-->
   <xsl:template match="spring-pressure/note" mode="expand-gentext" priority="4">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: spring-pressure/note-->
   <xsl:template match="spring-pressure/note" mode="set-countas" priority="4">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: torque-and-stretch/note-->
   <xsl:template name="__style-for_note.12touete239">
      <xsl:text> .x-note-9-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: torque-and-stretch/note-->
   <xsl:template match="torque-and-stretch/note" priority="3">
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-note-9-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: torque-and-stretch/note-->
   <xsl:template match="torque-and-stretch/note" mode="expand-gentext" priority="3">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: torque-and-stretch/note-->
   <xsl:template match="torque-and-stretch/note" mode="set-countas" priority="3">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: fits-and-clears/note-->
   <xsl:template name="__style-for_note.12fi-ate2010">
      <xsl:text> .x-note-10-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: fits-and-clears/note-->
   <xsl:template match="fits-and-clears/note" priority="2">
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-note-10-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: fits-and-clears/note-->
   <xsl:template match="fits-and-clears/note" mode="expand-gentext" priority="2">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: fits-and-clears/note-->
   <xsl:template match="fits-and-clears/note" mode="set-countas" priority="2">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: note[ancestor::subpara]-->
   <xsl:template name="__style-for_note.12note2311">
      <xsl:text> .x-note-11-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; margin-left: 61pt; text-indent: -43pt; } .x-note-11-1 {}</xsl:text>
   </xsl:template>

   <!--Template for Context: note[ancestor::subpara]-->
   <xsl:template match="note[ancestor::subpara]" priority="1">
      <xsl:variable name="foClass">block</xsl:variable>
      <xsl:variable name="blockness">block</xsl:variable>
      <xsl:variable name="startnew"/>
      <xsl:variable name="newpageset">#noChange</xsl:variable>
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-note-11-0</xsl:text>
            <xsl:if test="@nbr"> x-note-11-1</xsl:if>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:variable name="Breaks-chunkFilenameXPath"/>
         <xsl:variable name="Breaks-persistentFilename"/>
         <xsl:if test="($Breaks-persistentFilename='yes') and ($Breaks-chunkFilenameXPath!='')">
            <xsl:variable name="chunkFilename"/>
            <xsl:if test="$chunkFilename!=''">
               <xsl:attribute name="ch:filename">
                  <xsl:value-of select="$chunkFilename"/>
               </xsl:attribute>
               <xsl:attribute name="ch:namepriority">0</xsl:attribute>
            </xsl:if>
         </xsl:if>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: note[ancestor::subpara]-->
   <xsl:template match="note[ancestor::subpara]" mode="expand-gentext" priority="1">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:choose>
            <xsl:when test="@nbr">
               <!--AddBefore Condition #1-->
               <xsl:if test="not(@_gte:Gentext-Expanded)">
                  <_sfe:BeforeOrAfterText>
                     <span style="font-weight: bold; text-decoration: underline; ">
                        <xsl:text>NOTE</xsl:text>
                     </span>
                     <xsl:text>: </xsl:text>
                     <xsl:value-of select="@nbr"/>
                     <xsl:text>.&#x2003;</xsl:text>
                  </_sfe:BeforeOrAfterText>
               </xsl:if>
            </xsl:when>
            <xsl:otherwise>
               <xsl:if test="not(@_gte:Gentext-Expanded)">
                  <_sfe:BeforeOrAfterText>
                     <span style="font-weight: bold; text-decoration: underline; ">
                        <xsl:text>NOTE</xsl:text>
                     </span>
                     <xsl:text>:&#x2003;</xsl:text>
                  </_sfe:BeforeOrAfterText>
               </xsl:if>
            </xsl:otherwise>
         </xsl:choose>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: note[ancestor::subpara]-->
   <xsl:template match="note[ancestor::subpara]" mode="set-countas" priority="1">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: note-->
   <xsl:template name="__style-for_note.12note412">
      <xsl:text> .x-note-12-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; margin-left: 43pt; text-indent: -43pt; } .x-note-12-1 {margin-left: 55pt; text-indent: -55pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: note-->
   <xsl:template match="note" priority="0">
      <xsl:variable name="foClass">block</xsl:variable>
      <xsl:variable name="blockness">block</xsl:variable>
      <xsl:variable name="startnew"/>
      <xsl:variable name="newpageset">#noChange</xsl:variable>
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-note-12-0</xsl:text>
            <xsl:if test="@nbr"> x-note-12-1</xsl:if>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:variable name="Breaks-chunkFilenameXPath"/>
         <xsl:variable name="Breaks-persistentFilename"/>
         <xsl:if test="($Breaks-persistentFilename='yes') and ($Breaks-chunkFilenameXPath!='')">
            <xsl:variable name="chunkFilename"/>
            <xsl:if test="$chunkFilename!=''">
               <xsl:attribute name="ch:filename">
                  <xsl:value-of select="$chunkFilename"/>
               </xsl:attribute>
               <xsl:attribute name="ch:namepriority">0</xsl:attribute>
            </xsl:if>
         </xsl:if>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: note-->
   <xsl:template match="note" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:choose>
            <xsl:when test="@nbr">
               <!--AddBefore Condition #1-->
               <xsl:if test="not(@_gte:Gentext-Expanded)">
                  <_sfe:BeforeOrAfterText>
                     <span style="font-weight: bold; text-decoration: underline; ">
                        <xsl:text>NOTE</xsl:text>
                     </span>
                     <xsl:text>: </xsl:text>
                     <xsl:value-of select="@nbr"/>
                     <xsl:text>.&#x2003;</xsl:text>
                  </_sfe:BeforeOrAfterText>
               </xsl:if>
            </xsl:when>
            <xsl:otherwise>
               <xsl:if test="not(@_gte:Gentext-Expanded)">
                  <_sfe:BeforeOrAfterText>
                     <span style="font-weight: bold; text-decoration: underline; ">
                        <xsl:text>NOTE</xsl:text>
                     </span>
                     <xsl:text>:&#x2003;</xsl:text>
                  </_sfe:BeforeOrAfterText>
               </xsl:if>
            </xsl:otherwise>
         </xsl:choose>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: note-->
   <xsl:template match="note" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Template for Context: _ufe:num-index-title-->
   <xsl:template match="_ufe:num-index-title" priority="0">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x--ufe-num-index-title-4-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Template for Context: _ufe:nut-option-title-->
   <xsl:template match="_ufe:nut-option-title" priority="0">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x--ufe-nut-option-title-4-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Style template for Context: pageblock-front-->
   <xsl:template name="__style-for_pageblock-front.1">
      <xsl:text> .x-pageblock-front-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: pageblock-front-->
   <xsl:template match="pageblock-front" priority="0">
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-pageblock-front-1-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: pageblock-front-->
   <xsl:template match="pageblock-front" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: pageblock-front-->
   <xsl:template match="pageblock-front" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: frontmatter//module/pageblock-title-->
   <xsl:template name="__style-for_pageblock-title.3frtmle351">
      <xsl:text> .x-pageblock-title-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-weight: bold; text-decoration: underline ; text-transform: uppercase; margin-left: 0pt; text-indent: 0pt; text-align: center; }</xsl:text>
   </xsl:template>

   <!--Template for Context: frontmatter//module/pageblock-title-->
   <xsl:template match="frontmatter//module/pageblock-title" priority="2">
      <div>
         <xsl:attribute name="ch:title">toc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-pageblock-title-1-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: frontmatter//module/pageblock-title-->
   <xsl:template match="frontmatter//module/pageblock-title" mode="expand-gentext" priority="2">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="_gte:unhidden-title">yes</xsl:attribute>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <_gte:styler_numbering>
                  <xsl:variable name="gte_id">
                     <xsl:choose>
                        <xsl:when test="@_gte:id">
                           <xsl:value-of select="@_gte:id"/>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:value-of select="'_g_'"/>
                           <xsl:value-of select="generate-id(.)"/>
                        </xsl:otherwise>
                     </xsl:choose>
                  </xsl:variable>
                  <xsl:attribute name="gte_id">
                     <xsl:value-of select="$gte_id"/>
                  </xsl:attribute>
               </_gte:styler_numbering>
               <xsl:text> </xsl:text>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="frontmatter//module/pageblock-title" priority="2"
      mode="toc-mode-Table_of_Contents">
      <_sfe:TocEntry2_Table_of_Contents>
         <xsl:attribute name="tocentry-indent-class"> x-Table-of-Contents-toc-entry-indent-2</xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="attrname" select="'tocentry_id'"/>
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
            <xsl:with-param name="context-node" select="(.[self::_ufe:*]|..)[last()]"/>
         </xsl:call-template>
         <_sfe:TocTitle_Table_of_Contents>
            <xsl:if test="node()[not(self::_sfe:BeforeOrAfterText)]">
               <_gte:Gentexted-Content-Wrapper>
                  <xsl:apply-templates mode="expand-gentext">
                     <xsl:with-param name="skip-expanded-gentext" select="'yes'"/>
                  </xsl:apply-templates>
               </_gte:Gentexted-Content-Wrapper>
            </xsl:if>
         </_sfe:TocTitle_Table_of_Contents>
         <_sfe:TocPage_Table_of_Contents> </_sfe:TocPage_Table_of_Contents>
      </_sfe:TocEntry2_Table_of_Contents>
   </xsl:template>

   <!--Numbering template for context=frontmatter//module/pageblock-title-->
   <xsl:template match="frontmatter//module/pageblock-title" mode="styler_numbering" priority="2">
      <xsl:variable name="node-id" select="generate-id(.)"/>
      <xsl:variable name="num">
         <xsl:for-each select="parent::*/parent::*/*/*[@_gte:count-as-id='cnt__module.xcnt']">
            <xsl:if test="generate-id(.) = $node-id">
               <xsl:value-of select="position()"/>
            </xsl:if>
         </xsl:for-each>
      </xsl:variable>
      <xsl:choose>
         <xsl:when test="string(number($num))!='NaN'">
            <xsl:number value="$num" format="1"/>
         </xsl:when>
         <xsl:otherwise>?</xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <!--Set count-as pass template for Context: frontmatter//module/pageblock-title-->
   <xsl:template match="frontmatter//module/pageblock-title" mode="set-countas" priority="2">
      <xsl:copy>
         <xsl:attribute name="_gte:count-as-id">cnt__module.xcnt</xsl:attribute>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--LabelAndNumberMarker template-->
   <xsl:template match="frontmatter//module/pageblock-title" mode="styler-LabelAndNumberMarker"
      priority="2">
      <_gte:styler_numbering>
         <xsl:variable name="gte_id">
            <xsl:choose>
               <xsl:when test="@_gte:id">
                  <xsl:value-of select="@_gte:id"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="'_g_'"/>
                  <xsl:value-of select="generate-id(.)"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:attribute name="gte_id">
            <xsl:value-of select="$gte_id"/>
         </xsl:attribute>
      </_gte:styler_numbering>
   </xsl:template>

   <!--Style template for Context: pgblk/pageblock-title-->
   <xsl:template name="__style-for_pageblock-title.3pgkple212">
      <xsl:text> .x-pageblock-title-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: pgblk/pageblock-title-->
   <xsl:template match="pgblk/pageblock-title" priority="1">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-pageblock-title-2-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: pgblk/pageblock-title-->
   <xsl:template match="pgblk/pageblock-title" mode="expand-gentext" priority="1">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="_gte:unhidden-title">yes</xsl:attribute>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <_gte:styler_numbering>
                  <xsl:variable name="gte_id">
                     <xsl:choose>
                        <xsl:when test="@_gte:id">
                           <xsl:value-of select="@_gte:id"/>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:value-of select="'_g_'"/>
                           <xsl:value-of select="generate-id(.)"/>
                        </xsl:otherwise>
                     </xsl:choose>
                  </xsl:variable>
                  <xsl:attribute name="gte_id">
                     <xsl:value-of select="$gte_id"/>
                  </xsl:attribute>
               </_gte:styler_numbering>
               <xsl:text> </xsl:text>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="pgblk/pageblock-title" priority="1" mode="toc-mode-Table_of_Contents"><!--This title doesn't go into this ToC--></xsl:template>

   <!--Numbering template for context=pgblk/pageblock-title-->
   <xsl:template match="pgblk/pageblock-title" mode="styler_numbering" priority="1">
      <xsl:variable name="node-id" select="generate-id(ancestor::pgblk[1])"/>
      <xsl:variable name="num">
         <xsl:for-each
            select="//*[not(ancestor-or-self::pgblk)]/pgblk[pageblock-title]|/pgblk[pageblock-title]">
            <xsl:if test="generate-id(.) = $node-id">
               <xsl:value-of select="position()"/>
            </xsl:if>
         </xsl:for-each>
      </xsl:variable>
      <xsl:choose>
         <xsl:when test="string(number($num))!='NaN'">
            <xsl:number value="$num" format="1"/>
         </xsl:when>
         <xsl:otherwise>?</xsl:otherwise>
      </xsl:choose>
   </xsl:template>

   <!--Set count-as pass template for Context: pgblk/pageblock-title-->
   <xsl:template match="pgblk/pageblock-title" mode="set-countas" priority="1">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--LabelAndNumberMarker template-->
   <xsl:template match="pgblk/pageblock-title" mode="styler-LabelAndNumberMarker" priority="1">
      <_gte:styler_numbering>
         <xsl:variable name="gte_id">
            <xsl:choose>
               <xsl:when test="@_gte:id">
                  <xsl:value-of select="@_gte:id"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="'_g_'"/>
                  <xsl:value-of select="generate-id(.)"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:attribute name="gte_id">
            <xsl:value-of select="$gte_id"/>
         </xsl:attribute>
      </_gte:styler_numbering>
   </xsl:template>

   <!--Style template for Context: pageblock-title-->
   <xsl:template name="__style-for_pageblock-title.3pablle153">
      <xsl:text> .x-pageblock-title-3-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-weight: bold; font-size: 14pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: pageblock-title-->
   <xsl:template match="pageblock-title" priority="0">
      <div>
         <xsl:attribute name="ch:title">toc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-pageblock-title-3-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: pageblock-title-->
   <xsl:template match="pageblock-title" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="_gte:unhidden-title">yes</xsl:attribute>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="pageblock-title" priority="0" mode="toc-mode-Table_of_Contents">
      <_sfe:TocEntry4_Table_of_Contents>
         <xsl:attribute name="tocentry-indent-class"> x-Table-of-Contents-toc-entry-indent-4</xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="attrname" select="'tocentry_id'"/>
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
            <xsl:with-param name="context-node" select="(.[self::_ufe:*]|..)[last()]"/>
         </xsl:call-template>
         <_sfe:TocTitle_Table_of_Contents>
            <xsl:if test="node()[not(self::_sfe:BeforeOrAfterText)]">
               <_gte:Gentexted-Content-Wrapper>
                  <xsl:apply-templates mode="expand-gentext">
                     <xsl:with-param name="skip-expanded-gentext" select="'yes'"/>
                  </xsl:apply-templates>
               </_gte:Gentexted-Content-Wrapper>
            </xsl:if>
         </_sfe:TocTitle_Table_of_Contents>
         <_sfe:TocPage_Table_of_Contents> </_sfe:TocPage_Table_of_Contents>
      </_sfe:TocEntry4_Table_of_Contents>
   </xsl:template>

   <!--Numbering template for context=pageblock-title-->
   <xsl:template match="pageblock-title" mode="styler_numbering" priority="0">
      <!--This context has no numbering-->
      <xsl:param name="do-qmark" select="'yes'"/>
      <xsl:if test="$do-qmark='yes'">
         <xsl:value-of select="'?'"/>
      </xsl:if>
   </xsl:template>

   <!--Set count-as pass template for Context: pageblock-title-->
   <xsl:template match="pageblock-title" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: part-->
   <xsl:template name="__style-for_part.1">
      <xsl:text> .x-part-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: part-->
   <xsl:template match="part" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: part-->
   <xsl:template match="part" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: part-->
   <xsl:template match="part" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Template for Context: _ufe:pdlist-title-->
   <xsl:template match="_ufe:pdlist-title" priority="0">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x--ufe-pdlist-title-2-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Style template for Context: q-and-st-->
   <xsl:template name="__style-for_q-and-st.1">
      <xsl:text> .x-q-and-st-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: q-and-st-->
   <xsl:template match="q-and-st" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: q-and-st-->
   <xsl:template match="q-and-st" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: q-and-st-->
   <xsl:template match="q-and-st" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: ref-nbr-->
   <xsl:template name="__style-for_ref-nbr.1">
      <xsl:text> .x-ref-nbr-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: ref-nbr-->
   <xsl:template match="ref-nbr" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: ref-nbr-->
   <xsl:template match="ref-nbr" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: ref-nbr-->
   <xsl:template match="ref-nbr" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Gentext template for Context: refint[name(id(@refid))='table' and (id(@refid)/ancestor::figure or id(@refid)/ancestor::graphic)]-->
   <xsl:template
      match="refint[name(id(@refid))='table' and (id(@refid)/ancestor::figure or id(@refid)/ancestor::graphic)]"
      mode="expand-gentext" priority="4">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText/>
         </xsl:if>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
         <!--Unconditional AddAfter-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <_sfe:CrossReference>
                  <xsl:variable name="division-name-token-list"> alpha-list ata-page-block book
                     bullist chapsect-list chapter consumables enumlist figure fits-and-clears
                     fixtures-and-equipment frontmatter general highlights intro list lof lof-item
                     lot lot-item mm-fits module n-para num-index num-list page-block procedure
                     sblist section spec-tool-table special-tools subject subpara table title-page
                     torque-and-stretch unlist </xsl:variable>
                  <xsl:variable name="refed-id" select="@refid"/>
                  <xsl:variable name="idrefed-element-name"
                     select="concat(' ',name((//*[@_gte:id=$refed-id])[1]),' ')"/>
                  <_gte:Link linkRef="{@refid}">
                     <xsl:choose>
                        <xsl:when test="contains($division-name-token-list,$idrefed-element-name)">
                           <_gte:deferredCrossReference xrefStyle="Number" refed-id="{@refid}"/>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:apply-templates select="(//*[@_gte:id=$refed-id])[1]"
                              mode="styler_xref-Number"/>
                        </xsl:otherwise>
                     </xsl:choose>
                  </_gte:Link>
               </_sfe:CrossReference>
               <xsl:value-of select="@post-auto-text"/>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
      </xsl:copy>
   </xsl:template>

   <!--Gentext template for Context: refint[id(@refid)/self::table]-->
   <xsl:template match="refint[id(@refid)/self::table]" mode="expand-gentext" priority="3">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
         <!--Unconditional AddAfter-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <_sfe:CrossReference>
                  <xsl:variable name="division-name-token-list"> alpha-list ata-page-block book
                     bullist chapsect-list chapter consumables enumlist figure fits-and-clears
                     fixtures-and-equipment frontmatter general highlights intro list lof lof-item
                     lot lot-item mm-fits module n-para num-index num-list page-block procedure
                     sblist section spec-tool-table special-tools subject subpara table title-page
                     torque-and-stretch unlist </xsl:variable>
                  <xsl:variable name="refed-id" select="@refid"/>
                  <xsl:variable name="idrefed-element-name"
                     select="concat(' ',name((//*[@_gte:id=$refed-id])[1]),' ')"/>
                  <_gte:Link linkRef="{@refid}">
                     <xsl:choose>
                        <xsl:when test="contains($division-name-token-list,$idrefed-element-name)">
                           <_gte:deferredCrossReference xrefStyle="Number" refed-id="{@refid}"/>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:apply-templates select="(//*[@_gte:id=$refed-id])[1]"
                              mode="styler_xref-Number"/>
                        </xsl:otherwise>
                     </xsl:choose>
                  </_gte:Link>
               </_sfe:CrossReference>
               <xsl:value-of select="@post-auto-text"/>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: remarks-->
   <xsl:template name="__style-for_remarks.1">
      <xsl:text> .x-remarks-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: remarks-->
   <xsl:template match="remarks" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: remarks-->
   <xsl:template match="remarks" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>
   
   <!--Set count-as pass template for Context: remarks-->
   <xsl:template match="remarks" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: repl-->
   <xsl:template name="__style-for_repl.1">
      <xsl:text> .x-repl-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: repl-->
   <xsl:template match="repl" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: repl-->
   <xsl:template match="repl" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: repl-->
   <xsl:template match="repl" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: atidlm:resourcepair-->
   <xsl:template name="__style-for_atidlm-resourcepair.1">
      <xsl:text> .x-atidlm-resourcepair-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: atidlm:resourcepair-->
   <xsl:template match="atidlm:resourcepair" priority="0">
      <span>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-atidlm-resourcepair-1-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </span>
   </xsl:template>

   <!--Gentext template for Context: atidlm:resourcepair-->
   <xsl:template match="atidlm:resourcepair" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: atidlm:resourcepair-->
   <xsl:template match="atidlm:resourcepair" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Template for Context: _ufe:sblist-title-->
   <xsl:template match="_ufe:sblist-title" priority="0">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x--ufe-sblist-title-3-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Style template for Context: title-page/soa[@size='med']-->
   <xsl:template name="__style-for_soa.3tie-oa271">
      <xsl:text> .x-soa-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; text-align: center; }</xsl:text>
   </xsl:template>

   <!--Template for Context: title-page/soa[@size='med']-->
   <xsl:template match="title-page/soa[@size='med']" priority="2">
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-soa-1-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:choose>
            <xsl:when xmlns:ati3d="http://www.arbortext.com/namespace/graphics" test="@ati3d:viewer">
               <!--this graphic is a 3D graphic-->
               <xsl:variable name="viewer" select="@ati3d:viewer"/>
               <xsl:variable name="generated-idval">
                  <xsl:value-of select="concat($viewer,'_')"/>
                  <xsl:apply-templates select="." mode="set-id"/>
               </xsl:variable>
               <xsl:variable name="idval">
                  <xsl:value-of select="translate($generated-idval,'.','_')"/>
               </xsl:variable>
               <span id="{$idval}">
                  <xsl:variable name="specified-idval" select="string(@_gte:id)"/>
                  <span>
                     <xsl:if test="$specified-idval!=''">
                        <xsl:attribute name="id">
                           <xsl:value-of select="$specified-idval"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:variable name="filename">
                        <xsl:value-of select="@negnumber"/>
                     </xsl:variable>
                     <span class="viewpath">
                        <xsl:value-of select="translate($filename,'\','/')"/>
                     </span>
                     <xsl:if test="@ati3d:links">
                        <span class="viewlinks">
                           <xsl:value-of select="@ati3d:links"/>
                        </span>
                     </xsl:if>
                  </span>
                  <xsl:variable name="annotation" select="@ati3d:view"/>
                  <xsl:variable name="height"/>
                  <xsl:variable name="width"/>
                  <script>
                     <xsl:value-of select="$viewer"/>
                     <xsl:text>_Insert('</xsl:text>
                     <xsl:value-of select="$idval"/>
                     <xsl:text>', '</xsl:text>
                     <xsl:value-of select="$width"/>
                     <xsl:text>', '</xsl:text>
                     <xsl:value-of select="$height"/>
                     <xsl:text>', '</xsl:text>
                     <xsl:value-of select="$annotation"/>
                     <xsl:text>', '</xsl:text>
                     <xsl:call-template name="get-downloaduri">
                        <xsl:with-param name="viewer" select="$viewer"/>
                     </xsl:call-template>
                     <xsl:text>');</xsl:text>
                  </script>
               </span>
            </xsl:when>
            <xsl:otherwise>
               <!--this is a "regular" graphic-->
               <img alt="Graphic">
                  <xsl:if test="@xml:lang">
                     <xsl:attribute name="lang">
                        <xsl:call-template name="return-lang-applying-language-map">
                           <xsl:with-param name="doclang" select="@xml:lang"/>
                        </xsl:call-template>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:copy-of select="@ch:*"/>
                  <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap"
                     select="@dmp:*"/>
                  <xsl:if test="@xml:lang">
                     <xsl:attribute name="lang">
                        <xsl:call-template name="return-lang-applying-language-map">
                           <xsl:with-param name="doclang" select="@xml:lang"/>
                        </xsl:call-template>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:variable name="filename">
                     <xsl:value-of select="@negnumber"/>
                  </xsl:variable>
                  <xsl:variable name="graphic-prop-filename">
                     <xsl:if test="$graphics-path!=''">
                        <xsl:call-template name="substring-before-last">
                           <xsl:with-param name="str" select="$graphics-path"/>
                           <xsl:with-param name="delim" select="'/'"/>
                        </xsl:call-template>
                        <xsl:text>/</xsl:text>
                     </xsl:if>
                     <xsl:value-of select="$filename"/>
                  </xsl:variable>
                  <xsl:attribute name="src">
                     <xsl:value-of select="string($filename)"/>
                  </xsl:attribute>
                  <xsl:attribute name="style">max-width: 100%; </xsl:attribute>
                  <xsl:call-template name="maybe-set-id"/>
                  <!--Process this element's content-->
                  <xsl:apply-templates/>
               </img>
            </xsl:otherwise>
         </xsl:choose>
      </div>
   </xsl:template>

   <!--Gentext template for Context: title-page/soa[@size='med']-->
   <xsl:template match="title-page/soa[@size='med']" mode="expand-gentext" priority="2">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: title-page/soa[@size='med']-->
   <xsl:template match="title-page/soa[@size='med']" mode="set-countas" priority="2">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: soa[@size='med']-->
   <xsl:template name="__style-for_soa.3sooa162">
      <xsl:text> .x-soa-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: soa[@size='med']-->
   <xsl:template match="soa[@size='med']" priority="1">
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-soa-2-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:choose>
            <xsl:when xmlns:ati3d="http://www.arbortext.com/namespace/graphics" test="@ati3d:viewer">
               <!--this graphic is a 3D graphic-->
               <xsl:variable name="viewer" select="@ati3d:viewer"/>
               <xsl:variable name="generated-idval">
                  <xsl:value-of select="concat($viewer,'_')"/>
                  <xsl:apply-templates select="." mode="set-id"/>
               </xsl:variable>
               <xsl:variable name="idval">
                  <xsl:value-of select="translate($generated-idval,'.','_')"/>
               </xsl:variable>
               <span id="{$idval}">
                  <xsl:variable name="specified-idval" select="string(@_gte:id)"/>
                  <span>
                     <xsl:if test="$specified-idval!=''">
                        <xsl:attribute name="id">
                           <xsl:value-of select="$specified-idval"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:variable name="filename">
                        <xsl:value-of select="@negnumber"/>
                     </xsl:variable>
                     <span class="viewpath">
                        <xsl:value-of select="translate($filename,'\','/')"/>
                     </span>
                     <xsl:if test="@ati3d:links">
                        <span class="viewlinks">
                           <xsl:value-of select="@ati3d:links"/>
                        </span>
                     </xsl:if>
                  </span>
                  <xsl:variable name="annotation" select="@ati3d:view"/>
                  <xsl:variable name="height"/>
                  <xsl:variable name="width"/>
                  <script>
                     <xsl:value-of select="$viewer"/>
                     <xsl:text>_Insert('</xsl:text>
                     <xsl:value-of select="$idval"/>
                     <xsl:text>', '</xsl:text>
                     <xsl:value-of select="$width"/>
                     <xsl:text>', '</xsl:text>
                     <xsl:value-of select="$height"/>
                     <xsl:text>', '</xsl:text>
                     <xsl:value-of select="$annotation"/>
                     <xsl:text>', '</xsl:text>
                     <xsl:call-template name="get-downloaduri">
                        <xsl:with-param name="viewer" select="$viewer"/>
                     </xsl:call-template>
                     <xsl:text>');</xsl:text>
                  </script>
               </span>
            </xsl:when>
            <xsl:otherwise>
               <!--this is a "regular" graphic-->
               <img alt="Graphic">
                  <xsl:if test="@xml:lang">
                     <xsl:attribute name="lang">
                        <xsl:call-template name="return-lang-applying-language-map">
                           <xsl:with-param name="doclang" select="@xml:lang"/>
                        </xsl:call-template>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:copy-of select="@ch:*"/>
                  <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap"
                     select="@dmp:*"/>
                  <xsl:if test="@xml:lang">
                     <xsl:attribute name="lang">
                        <xsl:call-template name="return-lang-applying-language-map">
                           <xsl:with-param name="doclang" select="@xml:lang"/>
                        </xsl:call-template>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:variable name="filename">
                     <xsl:value-of select="@negnumber"/>
                  </xsl:variable>
                  <xsl:variable name="graphic-prop-filename">
                     <xsl:if test="$graphics-path!=''">
                        <xsl:call-template name="substring-before-last">
                           <xsl:with-param name="str" select="$graphics-path"/>
                           <xsl:with-param name="delim" select="'/'"/>
                        </xsl:call-template>
                        <xsl:text>/</xsl:text>
                     </xsl:if>
                     <xsl:value-of select="$filename"/>
                  </xsl:variable>
                  <xsl:attribute name="src">
                     <xsl:value-of select="string($filename)"/>
                  </xsl:attribute>
                  <xsl:attribute name="style">max-width: 100%; </xsl:attribute>
                  <xsl:call-template name="maybe-set-id"/>
                  <!--Process this element's content-->
                  <xsl:apply-templates/>
               </img>
            </xsl:otherwise>
         </xsl:choose>
      </div>
   </xsl:template>

   <!--Gentext template for Context: soa[@size='med']-->
   <xsl:template match="soa[@size='med']" mode="expand-gentext" priority="1">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: soa[@size='med']-->
   <xsl:template match="soa[@size='med']" mode="set-countas" priority="1">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: soa-->
   <xsl:template name="__style-for_soa.3sooa33">
      <xsl:text> .x-soa-3-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: soa-->
   <xsl:template match="soa" priority="0">
      <xsl:param name="hidden" select="'yes'"/>
      <xsl:if test="$hidden='no'">
         <div>
            <!--Emit class values to reflect conditions-->
            <xsl:attribute name="class">
               <xsl:text> x-soa-3-0</xsl:text>
            </xsl:attribute>
            <xsl:if test="@xml:lang">
               <xsl:attribute name="lang">
                  <xsl:call-template name="return-lang-applying-language-map">
                     <xsl:with-param name="doclang" select="@xml:lang"/>
                  </xsl:call-template>
               </xsl:attribute>
            </xsl:if>
            <xsl:copy-of select="@ch:*"/>
            <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
            <xsl:if test="@xml:lang">
               <xsl:attribute name="lang">
                  <xsl:call-template name="return-lang-applying-language-map">
                     <xsl:with-param name="doclang" select="@xml:lang"/>
                  </xsl:call-template>
               </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="maybe-set-id"/>
            <!--Suppress element contents (but not gentext) unless unhidden-->
            <xsl:choose>
               <xsl:when test="$hidden='no'">
                  <xsl:apply-templates/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:apply-templates select="_sfe:BeforeOrAfterText"/>
               </xsl:otherwise>
            </xsl:choose>
         </div>
      </xsl:if>
   </xsl:template>

   <!--Gentext template for Context: soa-->
   <xsl:template match="soa" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: soa-->
   <xsl:template match="soa" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Collect footnote template for Context: soa-->
   <xsl:template match="soa" mode="styler-collect-footnotes" priority="0">
      <xsl:apply-templates select="_sfe:BeforeOrAfterText/*" mode="styler-collect-footnotes"/>
   </xsl:template>

   <!--Style template for Context: atidlm:source-->
   <xsl:template name="__style-for_atidlm-source.1">
      <xsl:text> .x-atidlm-source-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: atidlm:source-->
   <xsl:template match="atidlm:source" priority="0">
      <span>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-atidlm-source-1-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </span>
   </xsl:template>

   <!--Gentext template for Context: atidlm:source-->
   <xsl:template match="atidlm:source" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: atidlm:source-->
   <xsl:template match="atidlm:source" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Template for Context: _ufe:spblist-title-->
   <xsl:template match="_ufe:spblist-title" priority="0">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x--ufe-spblist-title-3-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Style template for Context: spec-assem-->
   <xsl:template name="__style-for_spec-assem.1">
      <xsl:text> .x-spec-assem-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: spec-assem-->
   <xsl:template match="spec-assem" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: spec-assem-->
   <xsl:template match="spec-assem" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: spec-assem-->
   <xsl:template match="spec-assem" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: spec-tool-->
   <xsl:template name="__style-for_spec-tool.1">
      <xsl:text> .x-spec-tool-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: spec-tool-->
   <xsl:template match="spec-tool" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: spec-tool-->
   <xsl:template match="spec-tool" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: spec-tool-->
   <xsl:template match="spec-tool" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: special-tools-->
   <xsl:template name="__style-for_special-tools.1">
      <xsl:text> .x-special-tools-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; } .x-special-tools-1-1 {}</xsl:text>
   </xsl:template>

   <!--Template for Context: special-tools-->
   <xsl:template match="special-tools" priority="0">
      <xsl:variable name="foClass">formalBlock</xsl:variable>
      <xsl:variable name="blockness">block</xsl:variable>
      <xsl:variable name="startnew"/>
      <xsl:variable name="newpageset">#noChange</xsl:variable>
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-special-tools-1-0</xsl:text>
            <xsl:if test="@empty and string(@empty)='YES'"> x-special-tools-1-1</xsl:if>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:variable name="Breaks-chunkFilenameXPath"/>
         <xsl:variable name="Breaks-persistentFilename"/>
         <xsl:if test="($Breaks-persistentFilename='yes') and ($Breaks-chunkFilenameXPath!='')">
            <xsl:variable name="chunkFilename"/>
            <xsl:if test="$chunkFilename!=''">
               <xsl:attribute name="ch:filename">
                  <xsl:value-of select="$chunkFilename"/>
               </xsl:attribute>
               <xsl:attribute name="ch:namepriority">0</xsl:attribute>
            </xsl:if>
         </xsl:if>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: special-tools-->
   <xsl:template match="special-tools" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:choose>
            <xsl:when test="@empty and string(@empty)='YES'">
               <!--AddBefore Condition #1-->
               <xsl:if test="not(@_gte:Gentext-Expanded)">
                  <_sfe:BeforeOrAfterText>
                     <_ufe:spectools-title/>
                     <_ufe:not-applicable/>
                  </_sfe:BeforeOrAfterText>
               </xsl:if>
            </xsl:when>
            <xsl:otherwise>
               <xsl:if test="not(@_gte:Gentext-Expanded)">
                  <_sfe:BeforeOrAfterText>
                     <_ufe:spectools-title/>
                  </_sfe:BeforeOrAfterText>
               </xsl:if>
            </xsl:otherwise>
         </xsl:choose>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: special-tools-->
   <xsl:template match="special-tools" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: spring-->
   <xsl:template name="__style-for_spring.1">
      <xsl:text> .x-spring-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: spring-->
   <xsl:template match="spring" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: spring-->
   <xsl:template match="spring" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: spring-->
   <xsl:template match="spring" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: spring-pressure-->
   <xsl:template name="__style-for_spring-pressure.1">
      <xsl:text> .x-spring-pressure-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: spring-pressure-->
   <xsl:template match="spring-pressure" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: spring-pressure-->
   <xsl:template match="spring-pressure" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: spring-pressure-->
   <xsl:template match="spring-pressure" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: numlist/step-->
   <xsl:template name="__style-for_step.4nuisep121">
      <xsl:text> .x-step-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: numlist/step-->
   <xsl:template match="numlist/step" priority="3">
      <table border="0" cellpadding="0" cellspacing="0">
         <xsl:attribute name="style">
            <xsl:variable name="followWith">tab</xsl:variable>
            <xsl:if test="$followWith='tab'">table-layout: fixed; </xsl:if>
         </xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-step-1-0</xsl:text> x--zero-left-margins</xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <xsl:variable name="col1-width">1.5em</xsl:variable>
         <xsl:variable name="col2-width">12pt</xsl:variable>
         <xsl:variable name="col3-width"/>
         <xsl:variable name="itemlabel-colnum">1</xsl:variable>
         <xsl:variable name="col2-align">right</xsl:variable>
         <col>
            <xsl:if test="$col1-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col1-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col2-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col2-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col3-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col3-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <tbody>
            <tr valign="baseline">
               <td align="right">
                  <xsl:if test="$itemlabel-colnum=1">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
               </td>
               <td align="{$col2-align}">
                  <xsl:if test="$itemlabel-colnum=2">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
               </td>
               <td>
                  <xsl:if test="$itemlabel-colnum=3">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
                  <!--Process this element's content-->
                  <xsl:apply-templates select="node()[name(.)!='_sfe:BeforeOrAfterText']"/>
               </td>
            </tr>
         </tbody>
      </table>
   </xsl:template>

   <!--Gentext template for Context: numlist/step-->
   <xsl:template match="numlist/step" mode="expand-gentext" priority="3">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <_gte:styler_numbering>
                  <xsl:variable name="gte_id">
                     <xsl:choose>
                        <xsl:when test="@_gte:id">
                           <xsl:value-of select="@_gte:id"/>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:value-of select="'_g_'"/>
                           <xsl:value-of select="generate-id(.)"/>
                        </xsl:otherwise>
                     </xsl:choose>
                  </xsl:variable>
                  <xsl:attribute name="gte_id">
                     <xsl:value-of select="$gte_id"/>
                  </xsl:attribute>
               </_gte:styler_numbering>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Numbering template for context=numlist/step-->
   <xsl:template match="numlist/step" mode="styler_numbering" priority="3">
      <xsl:text>(</xsl:text>
      <xsl:number count="numlist/step" format="1"/>
      <xsl:text>)</xsl:text>
   </xsl:template>

   <!--Set count-as pass template for Context: numlist/step-->
   <xsl:template match="numlist/step" mode="set-countas" priority="3">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--LabelAndNumberMarker template-->
   <xsl:template match="numlist/step" mode="styler-LabelAndNumberMarker" priority="3">
      <_gte:styler_numbering>
         <xsl:variable name="gte_id">
            <xsl:choose>
               <xsl:when test="@_gte:id">
                  <xsl:value-of select="@_gte:id"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="'_g_'"/>
                  <xsl:value-of select="generate-id(.)"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:attribute name="gte_id">
            <xsl:value-of select="$gte_id"/>
         </xsl:attribute>
      </_gte:styler_numbering>
   </xsl:template>

   <!-- *** Edited Source for the 'procedure//step' context follows ***-->
   <!--Style template for Context: procedure//step-->
   <xsl:template name="__style-for_step.4predep152">
      <xsl:text> .x-step-2-0 {margin-left:
0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom:
6pt; margin-left: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>
   <!--Template for Context: procedure//step-->
   <xsl:template match="procedure//step" priority="2">
      <!--gdb 11-29-12 JIRA-814: added  or name() = 'revst' and following-sibling::*[1][name() = 'warning']...  or name() = 'revst' and following-sibling::*[1][name() = 'caution'] to move change  markup with <warning> or <caution> -->
      <xsl:apply-templates
         select="node()[name() = 'warning' or name() = 'revst' and following-sibling::*[1][name() = 'warning'] or name() = 'caution' or name() = 'revst' and following-sibling::*[1][name() = 'caution'] or name() = 'revend']"> </xsl:apply-templates>
      <table border="0" cellpadding="0" cellspacing="0">
         <xsl:attribute name="style">
            <xsl:variable name="followWith">tab</xsl:variable>
            <xsl:if test="$followWith='tab'">table-layout: fixed; </xsl:if>
         </xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-step-2-0</xsl:text> x--zero-left-margins</xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <xsl:variable name="col1-width">18pt</xsl:variable>
         <xsl:variable name="col2-width">20pt</xsl:variable>
         <xsl:variable name="col3-width"/>
         <xsl:variable name="itemlabel-colnum">2</xsl:variable>
         <xsl:variable name="col2-align">left</xsl:variable>
         <col>
            <xsl:if test="$col1-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col1-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col2-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col2-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col3-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col3-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <tbody>
            <tr valign="baseline">
               <td align="right">
                  <xsl:if test="$itemlabel-colnum=1">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
               </td>
               <td align="{$col2-align}">
                  <xsl:if test="$itemlabel-colnum=2">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"> </xsl:apply-templates>
                  </xsl:if>
               </td>
               <td>
                  <xsl:if test="$itemlabel-colnum=3">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"> </xsl:apply-templates>
                  </xsl:if>
                  <!--Process this element's content-->
                  <xsl:apply-templates
                     select="node()[name(.) != '_sfe:BeforeOrAfterText' and name() != 'warning'  and name() != 'caution']"
                  />
               </td>
            </tr>
         </tbody>
      </table>
   </xsl:template>
   <!--Gentext template for Context: procedure//step-->
   <xsl:template match="procedure//step" mode="expand-gentext" priority="2">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates mode="expand-gentext" select="@*"> </xsl:apply-templates>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <_gte:styler_numbering>
                  <xsl:variable name="gte_id">
                     <xsl:choose>
                        <xsl:when test="@_gte:id">
                           <xsl:value-of select="@_gte:id"/>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:value-of select="'_g_'"/>
                           <xsl:value-of select="generate-id(.)"/>
                        </xsl:otherwise>
                     </xsl:choose>
                  </xsl:variable>
                  <xsl:attribute name="gte_id">
                     <xsl:value-of select="$gte_id"/>
                  </xsl:attribute>
               </_gte:styler_numbering>
               <xsl:text> </xsl:text>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
         <xsl:apply-templates mode="expand-gentext" select="* | text() | processing-instruction()"/>
      </xsl:copy>
   </xsl:template>

   <!--Numbering template for context=procedure//step-->
   <xsl:template match="procedure//step" mode="styler_numbering" priority="2">
      <xsl:text>(</xsl:text>
      <xsl:variable name="node-id" select="generate-id(.)"/>
      <xsl:variable name="from-node"
         select="(ancestor-or-self::procedure[not(ancestor::procedure)])[last()]"/>
      <xsl:variable name="num">
         <xsl:variable name="candidate-num">
            <xsl:choose>
               <xsl:when test="count($from-node) &gt; 0">
                  <xsl:for-each
                     select="$from-node/descendant-or-self::*[@_gte:count-as-id='cnt__^procedure.cnt']">
                     <xsl:if test="generate-id(.) = $node-id">
                        <xsl:value-of select="position()"/>
                     </xsl:if>
                  </xsl:for-each>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:for-each
                     select="//*[@_gte:count-as-id='cnt__^procedure.cnt'][not(ancestor-or-self::procedure)]">
                     <xsl:if test="generate-id(.) = $node-id">
                        <xsl:value-of select="position()"/>
                     </xsl:if>
                  </xsl:for-each>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:choose>
            <xsl:when test="string(number($candidate-num))!='NaN'">
               <xsl:value-of select="$candidate-num"/>
            </xsl:when>
            <xsl:otherwise>1</xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:choose>
         <xsl:when test="string(number($num))!='NaN'">
            <xsl:number format="1" value="$num"/>
         </xsl:when>
         <xsl:otherwise>?</xsl:otherwise>
      </xsl:choose>
      <xsl:text>) </xsl:text>
   </xsl:template>
   <!--Set count-as pass template for Context: procedure//step-->
   <xsl:template match="procedure//step" mode="set-countas" priority="2">
      <xsl:copy>
         <xsl:attribute name="_gte:count-as-id">cnt__^procedure.cnt</xsl:attribute>
         <xsl:apply-templates mode="set-countas" select="@*|node()"> </xsl:apply-templates>
      </xsl:copy>
   </xsl:template>
   <!--LabelAndNumberMarker template-->
   <xsl:template match="procedure//step" mode="styler-LabelAndNumberMarker" priority="2">
      <_gte:styler_numbering>
         <xsl:variable name="gte_id">
            <xsl:choose>
               <xsl:when test="@_gte:id">
                  <xsl:value-of select="@_gte:id"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="'_g_'"/>
                  <xsl:value-of select="generate-id(.)"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:attribute name="gte_id">
            <xsl:value-of select="$gte_id"/>
         </xsl:attribute>
      </_gte:styler_numbering>
   </xsl:template>

   <!-- *** Edited Source for the 'step[table/@tabstyle='frac']' context follows ***-->
   <!--Style template for Context: step[table/@tabstyle='frac']-->
   <xsl:template name="__style-for_step.4step283">
      <xsl:text> .x-step-3-0 {margin-left:
0pt; margin-right: 0pt; text-indent: 0pt; line-height: 14pt; margin-bottom:
6pt; margin-left: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>
   <!--Template for Context: step[table/@tabstyle='frac']-->
   <xsl:template match="step[table/@tabstyle='frac']" priority="1">
      <!--gdb 11-29-12 JIRA-814: added  or name() = 'revst' and following-sibling::*[1][name() = 'warning']...  or name() = 'revst' and following-sibling::*[1][name() = 'caution'] to move change  markup with <warning> or <caution> -->
      <xsl:apply-templates
         select="node()[name() = 'warning' or name() = 'revst' and following-sibling::*[1][name() = 'warning'] or name() = 'caution' or name() = 'revst' and following-sibling::*[1][name() = 'caution'] or name() = 'revend']"> </xsl:apply-templates>
      <table border="0" cellpadding="0" cellspacing="0">
         <xsl:attribute name="style">
            <xsl:variable name="followWith">emspace</xsl:variable>
            <xsl:if test="$followWith='tab'">table-layout: fixed; </xsl:if>
         </xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-step-3-0</xsl:text> x--zero-left-margins</xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <xsl:variable name="col1-width">0pt</xsl:variable>
         <xsl:variable name="col2-width"/>
         <xsl:variable name="col3-width">100%</xsl:variable>
         <xsl:variable name="itemlabel-colnum">2</xsl:variable>
         <xsl:variable name="col2-align">left</xsl:variable>
         <col>
            <xsl:if test="$col1-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col1-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col2-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col2-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col3-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col3-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <tbody>
            <tr valign="baseline">
               <td align="right">
                  <xsl:if test="$itemlabel-colnum=1">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
               </td>
               <td align="{$col2-align}">
                  <xsl:if test="$itemlabel-colnum=2">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"> </xsl:apply-templates>
                  </xsl:if>
               </td>
               <td>
                  <xsl:if test="$itemlabel-colnum=3">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"> </xsl:apply-templates>
                  </xsl:if>
                  <!--Process this element's content-->
                  <xsl:apply-templates
                     select="node()[name(.)!='_sfe:BeforeOrAfterText' and name() != 'warning'  and name() != 'caution' ]"
                  />
               </td>
            </tr>
         </tbody>
      </table>
   </xsl:template>
   <!--Gentext template for Context: step[table/@tabstyle='frac']-->
   <xsl:template match="step[table/@tabstyle='frac']" mode="expand-gentext" priority="1">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates mode="expand-gentext" select="@*"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <span style="text-decoration: underline; ">
                  <_gte:styler_numbering>
                     <xsl:variable name="gte_id">
                        <xsl:choose>
                           <xsl:when test="@_gte:id">
                              <xsl:value-of select="@_gte:id"/>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:value-of select="'_g_'"/>
                              <xsl:value-of select="generate-id(.)"/>
                           </xsl:otherwise>
                        </xsl:choose>
                     </xsl:variable>
                     <xsl:attribute name="gte_id">
                        <xsl:value-of select="$gte_id"/>
                     </xsl:attribute>
                  </_gte:styler_numbering>
               </span>
               <xsl:text> </xsl:text>
               <xsl:text> </xsl:text>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
         <xsl:apply-templates mode="expand-gentext" select="* | text() | processing-instruction()"/>
      </xsl:copy>
   </xsl:template>

   <!--Numbering template for context=step[table/@tabstyle='frac']-->
   <xsl:template match="step[table/@tabstyle='frac']" mode="styler_numbering" priority="1">
      <xsl:text>(</xsl:text>
      <xsl:variable name="node-id" select="generate-id(.)"/>
      <xsl:variable name="from-node"
         select="(ancestor-or-self::step3[not(ancestor::step3)])[last()]"/>
      <xsl:variable name="num">
         <xsl:variable name="candidate-num">
            <xsl:choose>
               <xsl:when test="count($from-node) &gt; 0">
                  <xsl:for-each
                     select="$from-node/descendant-or-self::*[@_gte:count-as-id='cnt__^step3.cnt']">
                     <xsl:if test="generate-id(.) = $node-id">
                        <xsl:value-of select="position()"/>
                     </xsl:if>
                  </xsl:for-each>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:for-each
                     select="//*[@_gte:count-as-id='cnt__^step3.cnt'][not(ancestor-or-self::step3)]">
                     <xsl:if test="generate-id(.) = $node-id">
                        <xsl:value-of select="position()"/>
                     </xsl:if>
                  </xsl:for-each>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:choose>
            <xsl:when test="string(number($candidate-num))!='NaN'">
               <xsl:value-of select="$candidate-num"/>
            </xsl:when>
            <xsl:otherwise>1</xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:choose>
         <xsl:when test="string(number($num))!='NaN'">
            <xsl:number format="1" value="$num"/>
         </xsl:when>
         <xsl:otherwise>?</xsl:otherwise>
      </xsl:choose>
      <xsl:text>)</xsl:text>
   </xsl:template>
   <!--Set count-as pass template for Context: step[table/@tabstyle='frac']-->
   <xsl:template match="step[table/@tabstyle='frac']" mode="set-countas" priority="1">
      <xsl:copy>
         <xsl:attribute name="_gte:count-as-id">cnt__^step3.cnt</xsl:attribute>
         <xsl:apply-templates mode="set-countas" select="@*|node()"/>
      </xsl:copy>
   </xsl:template>
   <!--LabelAndNumberMarker template-->
   <xsl:template match="step[table/@tabstyle='frac']" mode="styler-LabelAndNumberMarker"
      priority="1">
      <_gte:styler_numbering>
         <xsl:variable name="gte_id">
            <xsl:choose>
               <xsl:when test="@_gte:id">
                  <xsl:value-of select="@_gte:id"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="'_g_'"/>
                  <xsl:value-of select="generate-id(.)"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:attribute name="gte_id">
            <xsl:value-of select="$gte_id"/>
         </xsl:attribute>
      </_gte:styler_numbering>
   </xsl:template>

   <!--Style template for Context: step-->
   <xsl:template name="__style-for_step.4step44">
      <xsl:text> .x-step-4-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: step-->
   <xsl:template match="step" priority="0">
      <table border="0" cellpadding="0" cellspacing="0">
         <xsl:attribute name="style">
            <xsl:variable name="followWith"/>
            <xsl:if test="$followWith='tab'">table-layout: fixed; </xsl:if>
         </xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-step-4-0</xsl:text> x--zero-left-margins</xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <xsl:variable name="col1-width">0pt</xsl:variable>
         <xsl:variable name="col2-width">0pt</xsl:variable>
         <xsl:variable name="col3-width"/>
         <xsl:variable name="itemlabel-colnum">3</xsl:variable>
         <xsl:variable name="col2-align">center</xsl:variable>
         <col>
            <xsl:if test="$col1-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col1-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col2-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col2-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col3-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col3-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <tbody>
            <tr valign="baseline">
               <td align="right">
                  <xsl:if test="$itemlabel-colnum=1">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                  </xsl:if>
               </td>
               <td align="{$col2-align}">
                  <xsl:if test="$itemlabel-colnum=2">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                  </xsl:if>
               </td>
               <td>
                  <xsl:if test="$itemlabel-colnum=3">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                  </xsl:if>
                  <!--Process this element's content-->
                  <xsl:apply-templates select="node()[name(.)!='_sfe:BeforeOrAfterText']"/>
               </td>
            </tr>
         </tbody>
      </table>
   </xsl:template>

   <!--Gentext template for Context: step-->
   <xsl:template match="step" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: step-->
   <xsl:template match="step" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: numlist/step2-->
   <xsl:template name="__style-for_step2.3nuisp2131">
      <xsl:text> .x-step2-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: numlist/step2-->
   <xsl:template match="numlist/step2" priority="2">
      <table border="0" cellpadding="0" cellspacing="0">
         <xsl:attribute name="style">
            <xsl:variable name="followWith">tab</xsl:variable>
            <xsl:if test="$followWith='tab'">table-layout: fixed; </xsl:if>
         </xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-step2-1-0</xsl:text> x--zero-left-margins</xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <xsl:variable name="col1-width">1.5em</xsl:variable>
         <xsl:variable name="col2-width">12pt</xsl:variable>
         <xsl:variable name="col3-width"/>
         <xsl:variable name="itemlabel-colnum">1</xsl:variable>
         <xsl:variable name="col2-align">right</xsl:variable>
         <col>
            <xsl:if test="$col1-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col1-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col2-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col2-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col3-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col3-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <tbody>
            <tr valign="baseline">
               <td align="right">
                  <xsl:if test="$itemlabel-colnum=1">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
               </td>
               <td align="{$col2-align}">
                  <xsl:if test="$itemlabel-colnum=2">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
               </td>
               <td>
                  <xsl:if test="$itemlabel-colnum=3">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
                  <!--Process this element's content-->
                  <xsl:apply-templates select="node()[name(.)!='_sfe:BeforeOrAfterText']"/>
               </td>
            </tr>
         </tbody>
      </table>
   </xsl:template>

   <!--Gentext template for Context: numlist/step2-->
   <xsl:template match="numlist/step2" mode="expand-gentext" priority="2">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <_gte:styler_numbering>
                  <xsl:variable name="gte_id">
                     <xsl:choose>
                        <xsl:when test="@_gte:id">
                           <xsl:value-of select="@_gte:id"/>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:value-of select="'_g_'"/>
                           <xsl:value-of select="generate-id(.)"/>
                        </xsl:otherwise>
                     </xsl:choose>
                  </xsl:variable>
                  <xsl:attribute name="gte_id">
                     <xsl:value-of select="$gte_id"/>
                  </xsl:attribute>
               </_gte:styler_numbering>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Numbering template for context=numlist/step2-->
   <xsl:template match="numlist/step2" mode="styler_numbering" priority="2">
      <xsl:text>(</xsl:text>
      <xsl:number count="numlist/step2" format="a"/>
      <xsl:text>)</xsl:text>
   </xsl:template>

   <!--Set count-as pass template for Context: numlist/step2-->
   <xsl:template match="numlist/step2" mode="set-countas" priority="2">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--LabelAndNumberMarker template-->
   <xsl:template match="numlist/step2" mode="styler-LabelAndNumberMarker" priority="2">
      <_gte:styler_numbering>
         <xsl:variable name="gte_id">
            <xsl:choose>
               <xsl:when test="@_gte:id">
                  <xsl:value-of select="@_gte:id"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="'_g_'"/>
                  <xsl:value-of select="generate-id(.)"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:attribute name="gte_id">
            <xsl:value-of select="$gte_id"/>
         </xsl:attribute>
      </_gte:styler_numbering>
   </xsl:template>

   <!-- *** Edited Source for the 'step2[table/@tabstyle='frac']' context follows ***-->
   <!--Style template for Context: step2[table/@tabstyle='frac']-->
   <xsl:template name="__style-for_step2.3st2p2292">
      <xsl:text> .x-step2-2-0
{margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; line-height:
14pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>
   <!--Template for Context: step2[table/@tabstyle='frac']-->
   <xsl:template match="step2[table/@tabstyle='frac']" priority="1">
      <!--gdb 11-29-12 JIRA-814: added  or name() = 'revst' and following-sibling::*[1][name() = 'warning']...  or name() = 'revst' and following-sibling::*[1][name() = 'caution'] to move change  markup with <warning> or <caution> -->
      <xsl:apply-templates
         select="node()[name() = 'warning' or name() = 'revst' and following-sibling::*[1][name() = 'warning'] or name() = 'caution' or name() = 'revst' and following-sibling::*[1][name() = 'caution'] or name() = 'revend']"> </xsl:apply-templates>
      <table border="0" cellpadding="0" cellspacing="0">
         <xsl:attribute name="style">
            <xsl:variable name="followWith">emspace</xsl:variable>
            <xsl:if test="$followWith='tab'">table-layout: fixed; </xsl:if>
         </xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-step2-2-0</xsl:text> x--zero-left-margins</xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <xsl:variable name="col1-width">0pt</xsl:variable>
         <xsl:variable name="col2-width"/>
         <xsl:variable name="col3-width">100%</xsl:variable>
         <xsl:variable name="itemlabel-colnum">2</xsl:variable>
         <xsl:variable name="col2-align">left</xsl:variable>
         <col>
            <xsl:if test="$col1-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col1-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col2-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col2-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col3-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col3-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <tbody>
            <tr valign="baseline">
               <td align="right">
                  <xsl:if test="$itemlabel-colnum=1">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
               </td>
               <td align="{$col2-align}">
                  <xsl:if test="$itemlabel-colnum=2">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"> </xsl:apply-templates>
                  </xsl:if>
               </td>
               <td>
                  <xsl:if test="$itemlabel-colnum=3">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"> </xsl:apply-templates>
                  </xsl:if>
                  <!--Process this element's content-->
                  <xsl:apply-templates
                     select="node()[name(.)!='_sfe:BeforeOrAfterText' and name() != 'warning'  and name() != 'caution' ]"
                  />
               </td>
            </tr>
         </tbody>
      </table>
   </xsl:template>
   <!--Gentext template for Context: step2[table/@tabstyle='frac']-->
   <xsl:template match="step2[table/@tabstyle='frac']" mode="expand-gentext" priority="1">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates mode="expand-gentext" select="@*"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <_gte:styler_numbering>
                  <xsl:variable name="gte_id">
                     <xsl:choose>
                        <xsl:when test="@_gte:id">
                           <xsl:value-of select="@_gte:id"/>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:value-of select="'_g_'"/>
                           <xsl:value-of select="generate-id(.)"/>
                        </xsl:otherwise>
                     </xsl:choose>
                  </xsl:variable>
                  <xsl:attribute name="gte_id">
                     <xsl:value-of select="$gte_id"/>
                  </xsl:attribute>
               </_gte:styler_numbering>
               <xsl:text> </xsl:text>
               <xsl:text> </xsl:text>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
         <xsl:apply-templates mode="expand-gentext" select="* | text() | processing-instruction()"/>
      </xsl:copy>
   </xsl:template>

   <!--Numbering template for context=step2[table/@tabstyle='frac']-->
   <xsl:template match="step2[table/@tabstyle='frac']" mode="styler_numbering" priority="1">
      <xsl:text>(</xsl:text>
      <xsl:variable name="node-id" select="generate-id(.)"/>
      <xsl:variable name="from-node"
         select="(ancestor-or-self::step3[not(ancestor::step3)])[last()]"/>
      <xsl:variable name="num">
         <xsl:variable name="candidate-num">
            <xsl:choose>
               <xsl:when test="count($from-node) &gt; 0">
                  <xsl:for-each
                     select="$from-node/descendant-or-self::*[@_gte:count-as-id='cnt__^step3.cnt']">
                     <xsl:if test="generate-id(.) = $node-id">
                        <xsl:value-of select="position()"/>
                     </xsl:if>
                  </xsl:for-each>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:for-each
                     select="//*[@_gte:count-as-id='cnt__^step3.cnt'][not(ancestor-or-self::step3)]">
                     <xsl:if test="generate-id(.) = $node-id">
                        <xsl:value-of select="position()"/>
                     </xsl:if>
                  </xsl:for-each>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:choose>
            <xsl:when test="string(number($candidate-num))!='NaN'">
               <xsl:value-of select="$candidate-num"/>
            </xsl:when>
            <xsl:otherwise>1</xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:choose>
         <xsl:when test="string(number($num))!='NaN'">
            <xsl:number format="a" value="$num"/>
         </xsl:when>
         <xsl:otherwise>?</xsl:otherwise>
      </xsl:choose>
      <xsl:text>)</xsl:text>
   </xsl:template>
   <!--Set count-as pass template for Context: step2[table/@tabstyle='frac']-->
   <xsl:template match="step2[table/@tabstyle='frac']" mode="set-countas" priority="1">
      <xsl:copy>
         <xsl:attribute name="_gte:count-as-id">cnt__^step3.cnt</xsl:attribute>
         <xsl:apply-templates mode="set-countas" select="@*|node()"/>
      </xsl:copy>
   </xsl:template>
   <!--LabelAndNumberMarker template-->
   <xsl:template match="step2[table/@tabstyle='frac']" mode="styler-LabelAndNumberMarker"
      priority="1">
      <_gte:styler_numbering>
         <xsl:variable name="gte_id">
            <xsl:choose>
               <xsl:when test="@_gte:id">
                  <xsl:value-of select="@_gte:id"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="'_g_'"/>
                  <xsl:value-of select="generate-id(.)"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:attribute name="gte_id">
            <xsl:value-of select="$gte_id"/>
         </xsl:attribute>
      </_gte:styler_numbering>
   </xsl:template>

   <!-- *** Edited Source for the 'step2' context follows ***-->
   <!--Style template for Context: step2-->
   <xsl:template name="__style-for_step2.3st2p253">
      <xsl:text> .x-step2-3-0 {margin-left:
0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom:
6pt; margin-left: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>
   <!--Template for Context: step2-->
   <xsl:template match="step2" priority="0">
      <!--gdb 11-29-12 JIRA-814: added  or name() = 'revst' and following-sibling::*[1][name() = 'warning']...  or name() = 'revst' and following-sibling::*[1][name() = 'caution'] to move change  markup with <warning> or <caution> -->
      <xsl:apply-templates
         select="node()[name() = 'warning' or name() = 'revst' and following-sibling::*[1][name() = 'warning'] or name() = 'caution' or name() = 'revst' and following-sibling::*[1][name() = 'caution'] or name() = 'revend']"> </xsl:apply-templates>
      <table border="0" cellpadding="0" cellspacing="0">
         <xsl:attribute name="style">
            <xsl:variable name="followWith">emspace</xsl:variable>
            <xsl:if test="$followWith='tab'">table-layout: fixed; </xsl:if>
         </xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-step2-3-0</xsl:text> x--zero-left-margins</xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <xsl:variable name="col1-width">0pt</xsl:variable>
         <xsl:variable name="col2-width"/>
         <xsl:variable name="col3-width">100%</xsl:variable>
         <xsl:variable name="itemlabel-colnum">2</xsl:variable>
         <xsl:variable name="col2-align">left</xsl:variable>
         <col>
            <xsl:if test="$col1-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col1-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col2-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col2-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col3-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col3-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <tbody>
            <tr valign="baseline">
               <td align="right">
                  <xsl:if test="$itemlabel-colnum=1">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
               </td>
               <td align="{$col2-align}">
                  <xsl:if test="$itemlabel-colnum=2">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"> </xsl:apply-templates>
                  </xsl:if>
               </td>
               <td>
                  <xsl:if test="$itemlabel-colnum=3">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"> </xsl:apply-templates>
                  </xsl:if>
                  <!--Process this element's content-->
                  <xsl:apply-templates
                     select="node()[name(.)!='_sfe:BeforeOrAfterText' and name() != 'warning'  and name() != 'caution' ]"
                  />
               </td>
            </tr>
         </tbody>
      </table>
   </xsl:template>
   <!--Gentext template for Context: step2-->
   <xsl:template match="step2" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates mode="expand-gentext" select="@*"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <_gte:styler_numbering>
                  <xsl:variable name="gte_id">
                     <xsl:choose>
                        <xsl:when test="@_gte:id">
                           <xsl:value-of select="@_gte:id"/>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:value-of select="'_g_'"/>
                           <xsl:value-of select="generate-id(.)"/>
                        </xsl:otherwise>
                     </xsl:choose>
                  </xsl:variable>
                  <xsl:attribute name="gte_id">
                     <xsl:value-of select="$gte_id"/>
                  </xsl:attribute>
               </_gte:styler_numbering>
               <xsl:text> </xsl:text>
               <xsl:text> </xsl:text>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
         <xsl:apply-templates mode="expand-gentext" select="* | text() | processing-instruction()"/>
      </xsl:copy>
   </xsl:template>

   <!--Numbering template for context=step2-->
   <xsl:template match="step2" mode="styler_numbering" priority="0">
      <xsl:text>(</xsl:text>
      <xsl:variable name="node-id" select="generate-id(.)"/>
      <xsl:variable name="from-node" select="(ancestor-or-self::step[not(ancestor::step)])[last()]"/>
      <xsl:variable name="num">
         <xsl:variable name="candidate-num">
            <xsl:choose>
               <xsl:when test="count($from-node) &gt; 0">
                  <xsl:for-each
                     select="$from-node/descendant-or-self::*[@_gte:count-as-id='cnt__^step.cnt']">
                     <xsl:if test="generate-id(.) = $node-id">
                        <xsl:value-of select="position()"/>
                     </xsl:if>
                  </xsl:for-each>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:for-each
                     select="//*[@_gte:count-as-id='cnt__^step.cnt'][not(ancestor-or-self::step)]">
                     <xsl:if test="generate-id(.) = $node-id">
                        <xsl:value-of select="position()"/>
                     </xsl:if>
                  </xsl:for-each>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:choose>
            <xsl:when test="string(number($candidate-num))!='NaN'">
               <xsl:value-of select="$candidate-num"/>
            </xsl:when>
            <xsl:otherwise>1</xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:choose>
         <xsl:when test="string(number($num))!='NaN'">
            <xsl:number format="a" value="$num"/>
         </xsl:when>
         <xsl:otherwise>?</xsl:otherwise>
      </xsl:choose>
      <xsl:text>)</xsl:text>
   </xsl:template>
   <!--Set count-as pass template for Context: step2-->
   <xsl:template match="step2" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:attribute name="_gte:count-as-id">cnt__^step.cnt</xsl:attribute>
         <xsl:apply-templates mode="set-countas" select="@*|node()"> </xsl:apply-templates>
      </xsl:copy>
   </xsl:template>
   <!--LabelAndNumberMarker template-->
   <xsl:template match="step2" mode="styler-LabelAndNumberMarker" priority="0">
      <_gte:styler_numbering>
         <xsl:variable name="gte_id">
            <xsl:choose>
               <xsl:when test="@_gte:id">
                  <xsl:value-of select="@_gte:id"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="'_g_'"/>
                  <xsl:value-of select="generate-id(.)"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:attribute name="gte_id">
            <xsl:value-of select="$gte_id"/>
         </xsl:attribute>
      </_gte:styler_numbering>
   </xsl:template>

   <!--Style template for Context: numlist/step3-->
   <xsl:template name="__style-for_step3.3nuisp3131">
      <xsl:text> .x-step3-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: numlist/step3-->
   <xsl:template match="numlist/step3" priority="2">
      <table border="0" cellpadding="0" cellspacing="0">
         <xsl:attribute name="style">
            <xsl:variable name="followWith">tab</xsl:variable>
            <xsl:if test="$followWith='tab'">table-layout: fixed; </xsl:if>
         </xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-step3-1-0</xsl:text> x--zero-left-margins</xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <xsl:variable name="col1-width">1.5em</xsl:variable>
         <xsl:variable name="col2-width">12pt</xsl:variable>
         <xsl:variable name="col3-width"/>
         <xsl:variable name="itemlabel-colnum">1</xsl:variable>
         <xsl:variable name="col2-align">right</xsl:variable>
         <col>
            <xsl:if test="$col1-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col1-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col2-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col2-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col3-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col3-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <tbody>
            <tr valign="baseline">
               <td align="right">
                  <xsl:if test="$itemlabel-colnum=1">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
               </td>
               <td align="{$col2-align}">
                  <xsl:if test="$itemlabel-colnum=2">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
               </td>
               <td>
                  <xsl:if test="$itemlabel-colnum=3">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
                  <!--Process this element's content-->
                  <xsl:apply-templates select="node()[name(.)!='_sfe:BeforeOrAfterText']"/>
               </td>
            </tr>
         </tbody>
      </table>
   </xsl:template>

   <!--Gentext template for Context: numlist/step3-->
   <xsl:template match="numlist/step3" mode="expand-gentext" priority="2">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <span style="text-decoration: underline; ">
                  <_gte:styler_numbering>
                     <xsl:variable name="gte_id">
                        <xsl:choose>
                           <xsl:when test="@_gte:id">
                              <xsl:value-of select="@_gte:id"/>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:value-of select="'_g_'"/>
                              <xsl:value-of select="generate-id(.)"/>
                           </xsl:otherwise>
                        </xsl:choose>
                     </xsl:variable>
                     <xsl:attribute name="gte_id">
                        <xsl:value-of select="$gte_id"/>
                     </xsl:attribute>
                  </_gte:styler_numbering>
               </span>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Numbering template for context=numlist/step3-->
   <xsl:template match="numlist/step3" mode="styler_numbering" priority="2">
      <xsl:number count="numlist/step3" format="1"/>
   </xsl:template>

   <!--Set count-as pass template for Context: numlist/step3-->
   <xsl:template match="numlist/step3" mode="set-countas" priority="2">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--LabelAndNumberMarker template-->
   <xsl:template match="numlist/step3" mode="styler-LabelAndNumberMarker" priority="2">
      <_gte:styler_numbering>
         <xsl:variable name="gte_id">
            <xsl:choose>
               <xsl:when test="@_gte:id">
                  <xsl:value-of select="@_gte:id"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="'_g_'"/>
                  <xsl:value-of select="generate-id(.)"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:attribute name="gte_id">
            <xsl:value-of select="$gte_id"/>
         </xsl:attribute>
      </_gte:styler_numbering>
   </xsl:template>

   <!-- *** Edited Source for the 'step3[table/@tabstyle='frac']' context follows ***-->
   <!--Style template for Context: step3[table/@tabstyle='frac']-->
   <xsl:template name="__style-for_step3.3st3p3292">
      <xsl:text> .x-step3-2-0
{margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; line-height:
14pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>
   <!--Template for Context: step3[table/@tabstyle='frac']-->
   <xsl:template match="step3[table/@tabstyle='frac']" priority="1">
      <!--gdb 11-29-12 JIRA-814: added  or name() = 'revst' and following-sibling::*[1][name() = 'warning']...  or name() = 'revst' and following-sibling::*[1][name() = 'caution'] to move change  markup with <warning> or <caution> -->
      <xsl:apply-templates
         select="node()[name() = 'warning' or name() = 'revst' and following-sibling::*[1][name() = 'warning'] or name() = 'caution' or name() = 'revst' and following-sibling::*[1][name() = 'caution'] or name() = 'revend']"> </xsl:apply-templates>
      <table border="0" cellpadding="0" cellspacing="0">
         <xsl:attribute name="style">
            <xsl:variable name="followWith">emspace</xsl:variable>
            <xsl:if test="$followWith='tab'">table-layout: fixed; </xsl:if>
         </xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-step3-2-0</xsl:text> x--zero-left-margins</xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <xsl:variable name="col1-width">0pt</xsl:variable>
         <xsl:variable name="col2-width"/>
         <xsl:variable name="col3-width">100%</xsl:variable>
         <xsl:variable name="itemlabel-colnum">2</xsl:variable>
         <xsl:variable name="col2-align">left</xsl:variable>
         <col>
            <xsl:if test="$col1-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col1-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col2-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col2-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col3-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col3-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <tbody>
            <tr valign="baseline">
               <td align="right">
                  <xsl:if test="$itemlabel-colnum=1">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
               </td>
               <td align="{$col2-align}">
                  <xsl:if test="$itemlabel-colnum=2">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"> </xsl:apply-templates>
                  </xsl:if>
               </td>
               <td>
                  <xsl:if test="$itemlabel-colnum=3">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"> </xsl:apply-templates>
                  </xsl:if>
                  <!--Process this element's content-->
                  <xsl:apply-templates
                     select="node()[name(.)!='_sfe:BeforeOrAfterText' and name() != 'warning'  and name() != 'caution' ]"
                  />
               </td>
            </tr>
         </tbody>
      </table>
   </xsl:template>
   <!--Gentext template for Context: step3[table/@tabstyle='frac']-->
   <xsl:template match="step3[table/@tabstyle='frac']" mode="expand-gentext" priority="1">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates mode="expand-gentext" select="@*"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <span style="text-decoration: underline; ">
                  <_gte:styler_numbering>
                     <xsl:variable name="gte_id">
                        <xsl:choose>
                           <xsl:when test="@_gte:id">
                              <xsl:value-of select="@_gte:id"/>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:value-of select="'_g_'"/>
                              <xsl:value-of select="generate-id(.)"/>
                           </xsl:otherwise>
                        </xsl:choose>
                     </xsl:variable>
                     <xsl:attribute name="gte_id">
                        <xsl:value-of select="$gte_id"/>
                     </xsl:attribute>
                  </_gte:styler_numbering>
               </span>
               <xsl:text> </xsl:text>
               <xsl:text> </xsl:text>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
         <xsl:apply-templates mode="expand-gentext" select="* | text() | processing-instruction()"/>
      </xsl:copy>
   </xsl:template>

   <!--Numbering template for context=step3[table/@tabstyle='frac']-->
   <xsl:template match="step3[table/@tabstyle='frac']" mode="styler_numbering" priority="1">
      <xsl:variable name="node-id" select="generate-id(.)"/>
      <xsl:variable name="from-node"
         select="(ancestor-or-self::step3[not(ancestor::step3)])[last()]"/>
      <xsl:variable name="num">
         <xsl:variable name="candidate-num">
            <xsl:choose>
               <xsl:when test="count($from-node) &gt; 0">
                  <xsl:for-each
                     select="$from-node/descendant-or-self::*[@_gte:count-as-id='cnt__^step3.cnt']">
                     <xsl:if test="generate-id(.) = $node-id">
                        <xsl:value-of select="position()"/>
                     </xsl:if>
                  </xsl:for-each>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:for-each
                     select="//*[@_gte:count-as-id='cnt__^step3.cnt'][not(ancestor-or-self::step3)]">
                     <xsl:if test="generate-id(.) = $node-id">
                        <xsl:value-of select="position()"/>
                     </xsl:if>
                  </xsl:for-each>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:choose>
            <xsl:when test="string(number($candidate-num))!='NaN'">
               <xsl:value-of select="$candidate-num"/>
            </xsl:when>
            <xsl:otherwise>1</xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:choose>
         <xsl:when test="string(number($num))!='NaN'">
            <xsl:number format="1" value="$num"/>
         </xsl:when>
         <xsl:otherwise>?</xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!--Set count-as pass template for Context: step3[table/@tabstyle='frac']-->
   <xsl:template match="step3[table/@tabstyle='frac']" mode="set-countas" priority="1">
      <xsl:copy>
         <xsl:attribute name="_gte:count-as-id">cnt__^step3.cnt</xsl:attribute>
         <xsl:apply-templates mode="set-countas" select="@*|node()"/>
      </xsl:copy>
   </xsl:template>
   <!--LabelAndNumberMarker template-->
   <xsl:template match="step3[table/@tabstyle='frac']" mode="styler-LabelAndNumberMarker"
      priority="1">
      <_gte:styler_numbering>
         <xsl:variable name="gte_id">
            <xsl:choose>
               <xsl:when test="@_gte:id">
                  <xsl:value-of select="@_gte:id"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="'_g_'"/>
                  <xsl:value-of select="generate-id(.)"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:attribute name="gte_id">
            <xsl:value-of select="$gte_id"/>
         </xsl:attribute>
      </_gte:styler_numbering>
   </xsl:template>

   <!-- *** Edited Source for the 'step3' context follows ***-->
   <!--Style template for Context: step3-->
   <xsl:template name="__style-for_step3.3st3p353">
      <xsl:text> .x-step3-3-0 {margin-left:
0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom:
6pt; margin-left: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>
   <!--Template for Context: step3-->
   <xsl:template match="step3" priority="0">
      <!--gdb 11-29-12 JIRA-814: added  or name() = 'revst' and following-sibling::*[1][name() = 'warning']...  or name() = 'revst' and following-sibling::*[1][name() = 'caution'] to move change  markup with <warning> or <caution> -->
      <xsl:apply-templates
         select="node()[name() = 'warning' or name() = 'revst' and following-sibling::*[1][name() = 'warning'] or name() = 'caution' or name() = 'revst' and following-sibling::*[1][name() = 'caution'] or name() = 'revend']"> </xsl:apply-templates>
      <table border="0" cellpadding="0" cellspacing="0">
         <xsl:attribute name="style">
            <xsl:variable name="followWith">emspace</xsl:variable>
            <xsl:if test="$followWith='tab'">table-layout: fixed; </xsl:if>
         </xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-step3-3-0</xsl:text> x--zero-left-margins</xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <xsl:variable name="col1-width">0pt</xsl:variable>
         <xsl:variable name="col2-width"/>
         <xsl:variable name="col3-width">100%</xsl:variable>
         <xsl:variable name="itemlabel-colnum">2</xsl:variable>
         <xsl:variable name="col2-align">left</xsl:variable>
         <col>
            <xsl:if test="$col1-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col1-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col2-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col2-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col3-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col3-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <tbody>
            <tr valign="baseline">
               <td align="right">
                  <xsl:if test="$itemlabel-colnum=1">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
               </td>
               <td align="{$col2-align}">
                  <xsl:if test="$itemlabel-colnum=2">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"> </xsl:apply-templates>
                  </xsl:if>
               </td>
               <td>
                  <xsl:if test="$itemlabel-colnum=3">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"> </xsl:apply-templates>
                  </xsl:if>
                  <!--Process this element's content-->
                  <xsl:apply-templates
                     select="node()[name(.)!='_sfe:BeforeOrAfterText' and name() != 'warning'  and name() != 'caution' ]"
                  />
               </td>
            </tr>
         </tbody>
      </table>
   </xsl:template>
   <!--Gentext template for Context: step3-->
   <xsl:template match="step3" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates mode="expand-gentext" select="@*"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <span style="text-decoration: underline; ">
                  <_gte:styler_numbering>
                     <xsl:variable name="gte_id">
                        <xsl:choose>
                           <xsl:when test="@_gte:id">
                              <xsl:value-of select="@_gte:id"/>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:value-of select="'_g_'"/>
                              <xsl:value-of select="generate-id(.)"/>
                           </xsl:otherwise>
                        </xsl:choose>
                     </xsl:variable>
                     <xsl:attribute name="gte_id">
                        <xsl:value-of select="$gte_id"/>
                     </xsl:attribute>
                  </_gte:styler_numbering>
               </span>
               <xsl:text> </xsl:text>
               <xsl:text> </xsl:text>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
         <xsl:apply-templates mode="expand-gentext" select="* | text() | processing-instruction()"/>
      </xsl:copy>
   </xsl:template>

   <!--Numbering template for context=step3-->
   <xsl:template match="step3" mode="styler_numbering" priority="0">
      <xsl:variable name="node-id" select="generate-id(.)"/>
      <xsl:variable name="from-node"
         select="(ancestor-or-self::step2[not(ancestor::step2)])[last()]"/>
      <xsl:variable name="num">
         <xsl:variable name="candidate-num">
            <xsl:choose>
               <xsl:when test="count($from-node) &gt; 0">
                  <xsl:for-each
                     select="$from-node/descendant-or-self::*[@_gte:count-as-id='cnt__^step2.cnt']">
                     <xsl:if test="generate-id(.) = $node-id">
                        <xsl:value-of select="position()"/>
                     </xsl:if>
                  </xsl:for-each>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:for-each
                     select="//*[@_gte:count-as-id='cnt__^step2.cnt'][not(ancestor-or-self::step2)]">
                     <xsl:if test="generate-id(.) = $node-id">
                        <xsl:value-of select="position()"/>
                     </xsl:if>
                  </xsl:for-each>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:choose>
            <xsl:when test="string(number($candidate-num))!='NaN'">
               <xsl:value-of select="$candidate-num"/>
            </xsl:when>
            <xsl:otherwise>1</xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:choose>
         <xsl:when test="string(number($num))!='NaN'">
            <xsl:number format="1" value="$num"/>
         </xsl:when>
         <xsl:otherwise>?</xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!--Set count-as pass template for Context: step3-->
   <xsl:template match="step3" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:attribute name="_gte:count-as-id">cnt__^step2.cnt</xsl:attribute>
         <xsl:apply-templates mode="set-countas" select="@*|node()"> </xsl:apply-templates>
      </xsl:copy>
   </xsl:template>
   <!--LabelAndNumberMarker template-->
   <xsl:template match="step3" mode="styler-LabelAndNumberMarker" priority="0">
      <_gte:styler_numbering>
         <xsl:variable name="gte_id">
            <xsl:choose>
               <xsl:when test="@_gte:id">
                  <xsl:value-of select="@_gte:id"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="'_g_'"/>
                  <xsl:value-of select="generate-id(.)"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:attribute name="gte_id">
            <xsl:value-of select="$gte_id"/>
         </xsl:attribute>
      </_gte:styler_numbering>
   </xsl:template>

   <!--Style template for Context: numlist/step4-->
   <xsl:template name="__style-for_step4.3nuisp4131">
      <xsl:text> .x-step4-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: numlist/step4-->
   <xsl:template match="numlist/step4" priority="2">
      <table border="0" cellpadding="0" cellspacing="0">
         <xsl:attribute name="style">
            <xsl:variable name="followWith">tab</xsl:variable>
            <xsl:if test="$followWith='tab'">table-layout: fixed; </xsl:if>
         </xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-step4-1-0</xsl:text> x--zero-left-margins</xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <xsl:variable name="col1-width">1.5em</xsl:variable>
         <xsl:variable name="col2-width">12pt</xsl:variable>
         <xsl:variable name="col3-width"/>
         <xsl:variable name="itemlabel-colnum">1</xsl:variable>
         <xsl:variable name="col2-align">right</xsl:variable>
         <col>
            <xsl:if test="$col1-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col1-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col2-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col2-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col3-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col3-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <tbody>
            <tr valign="baseline">
               <td align="right">
                  <xsl:if test="$itemlabel-colnum=1">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
               </td>
               <td align="{$col2-align}">
                  <xsl:if test="$itemlabel-colnum=2">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
               </td>
               <td>
                  <xsl:if test="$itemlabel-colnum=3">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
                  <!--Process this element's content-->
                  <xsl:apply-templates select="node()[name(.)!='_sfe:BeforeOrAfterText']"/>
               </td>
            </tr>
         </tbody>
      </table>
   </xsl:template>

   <!--Gentext template for Context: numlist/step4-->
   <xsl:template match="numlist/step4" mode="expand-gentext" priority="2">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <span style="text-decoration: underline; ">
                  <_gte:styler_numbering>
                     <xsl:variable name="gte_id">
                        <xsl:choose>
                           <xsl:when test="@_gte:id">
                              <xsl:value-of select="@_gte:id"/>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:value-of select="'_g_'"/>
                              <xsl:value-of select="generate-id(.)"/>
                           </xsl:otherwise>
                        </xsl:choose>
                     </xsl:variable>
                     <xsl:attribute name="gte_id">
                        <xsl:value-of select="$gte_id"/>
                     </xsl:attribute>
                  </_gte:styler_numbering>
               </span>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Numbering template for context=numlist/step4-->
   <xsl:template match="numlist/step4" mode="styler_numbering" priority="2">
      <xsl:number count="numlist/step4" format="a"/>
   </xsl:template>

   <!--Set count-as pass template for Context: numlist/step4-->
   <xsl:template match="numlist/step4" mode="set-countas" priority="2">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--LabelAndNumberMarker template-->
   <xsl:template match="numlist/step4" mode="styler-LabelAndNumberMarker" priority="2">
      <_gte:styler_numbering>
         <xsl:variable name="gte_id">
            <xsl:choose>
               <xsl:when test="@_gte:id">
                  <xsl:value-of select="@_gte:id"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="'_g_'"/>
                  <xsl:value-of select="generate-id(.)"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:attribute name="gte_id">
            <xsl:value-of select="$gte_id"/>
         </xsl:attribute>
      </_gte:styler_numbering>
   </xsl:template>

   <!-- *** Edited Source for the 'step4[table/@tabstyle='frac']' context follows ***-->
   <!--Style template for Context: step4[table/@tabstyle='frac']-->
   <xsl:template name="__style-for_step4.3st4p4292">
      <xsl:text> .x-step4-2-0
{margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; line-height:
14pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>
   <!--Template for Context: step4[table/@tabstyle='frac']-->
   <xsl:template match="step4[table/@tabstyle='frac']" priority="1">
      <!--gdb 11-29-12 JIRA-814: added  or name() = 'revst' and following-sibling::*[1][name() = 'warning']...  or name() = 'revst' and following-sibling::*[1][name() = 'caution'] to move change  markup with <warning> or <caution> -->
      <xsl:apply-templates
         select="node()[name() = 'warning' or name() = 'revst' and following-sibling::*[1][name() = 'warning'] or name() = 'caution' or name() = 'revst' and following-sibling::*[1][name() = 'caution'] or name() = 'revend']"> </xsl:apply-templates>
      <table border="0" cellpadding="0" cellspacing="0">
         <xsl:attribute name="style">
            <xsl:variable name="followWith">emspace</xsl:variable>
            <xsl:if test="$followWith='tab'">table-layout: fixed; </xsl:if>
         </xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-step4-2-0</xsl:text> x--zero-left-margins</xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <xsl:variable name="col1-width">0pt</xsl:variable>
         <xsl:variable name="col2-width"/>
         <xsl:variable name="col3-width">100%</xsl:variable>
         <xsl:variable name="itemlabel-colnum">2</xsl:variable>
         <xsl:variable name="col2-align">left</xsl:variable>
         <col>
            <xsl:if test="$col1-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col1-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col2-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col2-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col3-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col3-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <tbody>
            <tr valign="baseline">
               <td align="right">
                  <xsl:if test="$itemlabel-colnum=1">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
               </td>
               <td align="{$col2-align}">
                  <xsl:if test="$itemlabel-colnum=2">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"> </xsl:apply-templates>
                  </xsl:if>
               </td>
               <td>
                  <xsl:if test="$itemlabel-colnum=3">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"> </xsl:apply-templates>
                  </xsl:if>
                  <!--Process this element's content-->
                  <xsl:apply-templates
                     select="node()[name(.)!='_sfe:BeforeOrAfterText' and name() != 'warning'  and name() != 'caution' ]"
                  />
               </td>
            </tr>
         </tbody>
      </table>
   </xsl:template>
   <!--Gentext template for Context: step4[table/@tabstyle='frac']-->
   <xsl:template match="step4[table/@tabstyle='frac']" mode="expand-gentext" priority="1">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates mode="expand-gentext" select="@*"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <span style="text-decoration: underline; ">
                  <_gte:styler_numbering>
                     <xsl:variable name="gte_id">
                        <xsl:choose>
                           <xsl:when test="@_gte:id">
                              <xsl:value-of select="@_gte:id"/>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:value-of select="'_g_'"/>
                              <xsl:value-of select="generate-id(.)"/>
                           </xsl:otherwise>
                        </xsl:choose>
                     </xsl:variable>
                     <xsl:attribute name="gte_id">
                        <xsl:value-of select="$gte_id"/>
                     </xsl:attribute>
                  </_gte:styler_numbering>
               </span>
               <xsl:text> </xsl:text>
               <xsl:text> </xsl:text>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
         <xsl:apply-templates mode="expand-gentext" select="* | text() | processing-instruction()"/>
      </xsl:copy>
   </xsl:template>

   <!--Numbering template for context=step4[table/@tabstyle='frac']-->
   <xsl:template match="step4[table/@tabstyle='frac']" mode="styler_numbering" priority="1">
      <xsl:variable name="node-id" select="generate-id(.)"/>
      <xsl:variable name="from-node"
         select="(ancestor-or-self::step3[not(ancestor::step3)])[last()]"/>
      <xsl:variable name="num">
         <xsl:variable name="candidate-num">
            <xsl:choose>
               <xsl:when test="count($from-node) &gt; 0">
                  <xsl:for-each
                     select="$from-node/descendant-or-self::*[@_gte:count-as-id='cnt__^step3.cnt']">
                     <xsl:if test="generate-id(.) = $node-id">
                        <xsl:value-of select="position()"/>
                     </xsl:if>
                  </xsl:for-each>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:for-each
                     select="//*[@_gte:count-as-id='cnt__^step3.cnt'][not(ancestor-or-self::step3)]">
                     <xsl:if test="generate-id(.) = $node-id">
                        <xsl:value-of select="position()"/>
                     </xsl:if>
                  </xsl:for-each>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:choose>
            <xsl:when test="string(number($candidate-num))!='NaN'">
               <xsl:value-of select="$candidate-num"/>
            </xsl:when>
            <xsl:otherwise>1</xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:choose>
         <xsl:when test="string(number($num))!='NaN'">
            <xsl:number format="a" value="$num"/>
         </xsl:when>
         <xsl:otherwise>?</xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!--Set count-as pass template for Context: step4[table/@tabstyle='frac']-->
   <xsl:template match="step4[table/@tabstyle='frac']" mode="set-countas" priority="1">
      <xsl:copy>
         <xsl:attribute name="_gte:count-as-id">cnt__^step3.cnt</xsl:attribute>
         <xsl:apply-templates mode="set-countas" select="@*|node()"/>
      </xsl:copy>
   </xsl:template>
   <!--LabelAndNumberMarker template-->
   <xsl:template match="step4[table/@tabstyle='frac']" mode="styler-LabelAndNumberMarker"
      priority="1">
      <_gte:styler_numbering>
         <xsl:variable name="gte_id">
            <xsl:choose>
               <xsl:when test="@_gte:id">
                  <xsl:value-of select="@_gte:id"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="'_g_'"/>
                  <xsl:value-of select="generate-id(.)"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:attribute name="gte_id">
            <xsl:value-of select="$gte_id"/>
         </xsl:attribute>
      </_gte:styler_numbering>
   </xsl:template>

   <!-- *** Edited Source for the 'step4' context follows ***-->
   <!--Style template for Context: step4-->
   <xsl:template name="__style-for_step4.3st4p453">
      <xsl:text> .x-step4-3-0 {margin-left:
0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom:
6pt; margin-left: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>
   <!--Template for Context: step4-->
   <xsl:template match="step4" priority="0">
      <!--gdb 11-29-12 JIRA-814: added  or name() = 'revst' and following-sibling::*[1][name() = 'warning']...  or name() = 'revst' and following-sibling::*[1][name() = 'caution'] to move change  markup with <warning> or <caution> -->
      <xsl:apply-templates
         select="node()[name() = 'warning' or name() = 'revst' and following-sibling::*[1][name() = 'warning'] or name() = 'caution' or name() = 'revst' and following-sibling::*[1][name() = 'caution'] or name() = 'revend']"> </xsl:apply-templates>
      <table border="0" cellpadding="0" cellspacing="0">
         <xsl:attribute name="style">
            <xsl:variable name="followWith">emspace</xsl:variable>
            <xsl:if test="$followWith='tab'">table-layout: fixed; </xsl:if>
         </xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-step4-3-0</xsl:text> x--zero-left-margins</xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <xsl:variable name="col1-width">0pt</xsl:variable>
         <xsl:variable name="col2-width"/>
         <xsl:variable name="col3-width">100%</xsl:variable>
         <xsl:variable name="itemlabel-colnum">2</xsl:variable>
         <xsl:variable name="col2-align">left</xsl:variable>
         <col>
            <xsl:if test="$col1-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col1-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col2-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col2-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col3-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col3-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <tbody>
            <tr valign="baseline">
               <td align="right">
                  <xsl:if test="$itemlabel-colnum=1">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
               </td>
               <td align="{$col2-align}">
                  <xsl:if test="$itemlabel-colnum=2">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"> </xsl:apply-templates>
                  </xsl:if>
               </td>
               <td>
                  <xsl:if test="$itemlabel-colnum=3">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"> </xsl:apply-templates>
                  </xsl:if>
                  <!--Process this element's content-->
                  <xsl:apply-templates
                     select="node()[name(.)!='_sfe:BeforeOrAfterText' and name() != 'warning'  and name() != 'caution' ]"
                  />
               </td>
            </tr>
         </tbody>
      </table>
   </xsl:template>
   <!--Gentext template for Context: step4-->
   <xsl:template match="step4" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates mode="expand-gentext" select="@*"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <span style="text-decoration: underline; ">
                  <_gte:styler_numbering>
                     <xsl:variable name="gte_id">
                        <xsl:choose>
                           <xsl:when test="@_gte:id">
                              <xsl:value-of select="@_gte:id"/>
                           </xsl:when>
                           <xsl:otherwise>
                              <xsl:value-of select="'_g_'"/>
                              <xsl:value-of select="generate-id(.)"/>
                           </xsl:otherwise>
                        </xsl:choose>
                     </xsl:variable>
                     <xsl:attribute name="gte_id">
                        <xsl:value-of select="$gte_id"/>
                     </xsl:attribute>
                  </_gte:styler_numbering>
               </span>
               <xsl:text> </xsl:text>
               <xsl:text> </xsl:text>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
         <xsl:apply-templates mode="expand-gentext" select="* | text() | processing-instruction()"/>
      </xsl:copy>
   </xsl:template>

   <!--Numbering template for context=step4-->
   <xsl:template match="step4" mode="styler_numbering" priority="0">
      <xsl:variable name="node-id" select="generate-id(.)"/>
      <xsl:variable name="from-node"
         select="(ancestor-or-self::step3[not(ancestor::step3)])[last()]"/>
      <xsl:variable name="num">
         <xsl:variable name="candidate-num">
            <xsl:choose>
               <xsl:when test="count($from-node) &gt; 0">
                  <xsl:for-each
                     select="$from-node/descendant-or-self::*[@_gte:count-as-id='cnt__^step3.cnt']">
                     <xsl:if test="generate-id(.) = $node-id">
                        <xsl:value-of select="position()"/>
                     </xsl:if>
                  </xsl:for-each>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:for-each
                     select="//*[@_gte:count-as-id='cnt__^step3.cnt'][not(ancestor-or-self::step3)]">
                     <xsl:if test="generate-id(.) = $node-id">
                        <xsl:value-of select="position()"/>
                     </xsl:if>
                  </xsl:for-each>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:choose>
            <xsl:when test="string(number($candidate-num))!='NaN'">
               <xsl:value-of select="$candidate-num"/>
            </xsl:when>
            <xsl:otherwise>1</xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:choose>
         <xsl:when test="string(number($num))!='NaN'">
            <xsl:number format="a" value="$num"/>
         </xsl:when>
         <xsl:otherwise>?</xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!--Set count-as pass template for Context: step4-->
   <xsl:template match="step4" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:attribute name="_gte:count-as-id">cnt__^step3.cnt</xsl:attribute>
         <xsl:apply-templates mode="set-countas" select="@*|node()"> </xsl:apply-templates>
      </xsl:copy>
   </xsl:template>
   <!--LabelAndNumberMarker template-->
   <xsl:template match="step4" mode="styler-LabelAndNumberMarker" priority="0">
      <_gte:styler_numbering>
         <xsl:variable name="gte_id">
            <xsl:choose>
               <xsl:when test="@_gte:id">
                  <xsl:value-of select="@_gte:id"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="'_g_'"/>
                  <xsl:value-of select="generate-id(.)"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:attribute name="gte_id">
            <xsl:value-of select="$gte_id"/>
         </xsl:attribute>
      </_gte:styler_numbering>
   </xsl:template>

   <!--Style template for Context: numlist/step5-->
   <xsl:template name="__style-for_step5.3nuisp5131">
      <xsl:text> .x-step5-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: numlist/step5-->
   <xsl:template match="numlist/step5" priority="2">
      <table border="0" cellpadding="0" cellspacing="0">
         <xsl:attribute name="style">
            <xsl:variable name="followWith"/>
            <xsl:if test="$followWith='tab'">table-layout: fixed; </xsl:if>
         </xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-step5-1-0</xsl:text> x--zero-left-margins</xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <xsl:variable name="col1-width">0pt</xsl:variable>
         <xsl:variable name="col2-width">0pt</xsl:variable>
         <xsl:variable name="col3-width"/>
         <xsl:variable name="itemlabel-colnum">3</xsl:variable>
         <xsl:variable name="col2-align">center</xsl:variable>
         <col>
            <xsl:if test="$col1-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col1-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col2-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col2-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col3-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col3-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <tbody>
            <tr valign="baseline">
               <td align="right">
                  <xsl:if test="$itemlabel-colnum=1">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
               </td>
               <td align="{$col2-align}">
                  <xsl:if test="$itemlabel-colnum=2">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
               </td>
               <td>
                  <xsl:if test="$itemlabel-colnum=3">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
                  <!--Process this element's content-->
                  <xsl:apply-templates select="node()[name(.)!='_sfe:BeforeOrAfterText']"/>
               </td>
            </tr>
         </tbody>
      </table>
   </xsl:template>

   <!--Gentext template for Context: numlist/step5-->
   <xsl:template match="numlist/step5" mode="expand-gentext" priority="2">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText/>
         </xsl:if>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: numlist/step5-->
   <xsl:template match="numlist/step5" mode="set-countas" priority="2">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!-- *** Edited Source for the 'step5[table/@tabstyle='frac']' context follows ***-->
   <!--Style template for Context: step5[table/@tabstyle='frac']-->
   <xsl:template name="__style-for_step5.3st5p5292">
      <xsl:text> .x-step5-2-0
{margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; line-height:
14pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>
   <!--Template for Context: step5[table/@tabstyle='frac']-->
   <xsl:template match="step5[table/@tabstyle='frac']" priority="1">
      <!--gdb 11-29-12 JIRA-814: added  or name() = 'revst' and following-sibling::*[1][name() = 'warning']...  or name() = 'revst' and following-sibling::*[1][name() = 'caution'] to move change  markup with <warning> or <caution> -->
      <xsl:apply-templates
         select="node()[name() = 'warning' or name() = 'revst' and following-sibling::*[1][name() = 'warning'] or name() = 'caution' or name() = 'revst' and following-sibling::*[1][name() = 'caution'] or name() = 'revend']"> </xsl:apply-templates>
      <table border="0" cellpadding="0" cellspacing="0">
         <xsl:attribute name="style">
            <xsl:variable name="followWith"/>
            <xsl:if test="$followWith='tab'">table-layout: fixed; </xsl:if>
         </xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-step5-2-0</xsl:text> x--zero-left-margins</xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <xsl:variable name="col1-width">0pt</xsl:variable>
         <xsl:variable name="col2-width">0pt</xsl:variable>
         <xsl:variable name="col3-width"/>
         <xsl:variable name="itemlabel-colnum">3</xsl:variable>
         <xsl:variable name="col2-align">center</xsl:variable>
         <col>
            <xsl:if test="$col1-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col1-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col2-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col2-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col3-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col3-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <tbody>
            <tr valign="baseline">
               <td align="right">
                  <xsl:if test="$itemlabel-colnum=1">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"/>
                  </xsl:if>
               </td>
               <td align="{$col2-align}">
                  <xsl:if test="$itemlabel-colnum=2">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"> </xsl:apply-templates>
                  </xsl:if>
               </td>
               <td>
                  <xsl:if test="$itemlabel-colnum=3">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText[1]"> </xsl:apply-templates>
                  </xsl:if>
                  <!--Process this element's content-->
                  <xsl:apply-templates
                     select="node()[name(.)!='_sfe:BeforeOrAfterText' and name() != 'warning'  and name() != 'caution' ]"
                  />
               </td>
            </tr>
         </tbody>
      </table>
   </xsl:template>
   <!--Gentext template for Context: step5[table/@tabstyle='frac']-->
   <xsl:template match="step5[table/@tabstyle='frac']" mode="expand-gentext" priority="1">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates mode="expand-gentext" select="@*"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText/>
         </xsl:if>
         <xsl:apply-templates mode="expand-gentext" select="* | text() | processing-instruction()"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: step5[table/@tabstyle='frac']-->
   <xsl:template match="step5[table/@tabstyle='frac']" mode="set-countas" priority="1">
      <xsl:copy>
         <xsl:apply-templates mode="set-countas" select="@*|node()"/>
      </xsl:copy>
   </xsl:template>

   <!-- *** Edited Source for the 'step5' context follows ***-->
   <!--Style template for Context: step5-->
   <xsl:template name="__style-for_step5.3st5p553">
      <xsl:text> .x-step5-3-0 {margin-left:
0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom:
6pt; margin-left: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>
   <!--Template for Context: step5-->
   <xsl:template match="step5" priority="0">
      <!--gdb 11-29-12 JIRA-814: added  or name() = 'revst' and following-sibling::*[1][name() = 'warning']...  or name() = 'revst' and following-sibling::*[1][name() = 'caution'] to move change  markup with <warning> or <caution> -->
      <xsl:apply-templates
         select="node()[name() = 'warning' or name() = 'revst' and following-sibling::*[1][name() = 'warning'] or name() = 'caution' or name() = 'revst' and following-sibling::*[1][name() = 'caution'] or name() = 'revend']"> </xsl:apply-templates>
      <table border="0" cellpadding="0" cellspacing="0">
         <xsl:attribute name="style">
            <xsl:variable name="followWith"/>
            <xsl:if test="$followWith='tab'">table-layout: fixed; </xsl:if>
         </xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-step5-3-0</xsl:text> x--zero-left-margins</xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <xsl:variable name="col1-width">0pt</xsl:variable>
         <xsl:variable name="col2-width">0pt</xsl:variable>
         <xsl:variable name="col3-width"/>
         <xsl:variable name="itemlabel-colnum">3</xsl:variable>
         <xsl:variable name="col2-align">center</xsl:variable>
         <col>
            <xsl:if test="$col1-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col1-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col2-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col2-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <col>
            <xsl:if test="$col3-width!=''">
               <xsl:attribute name="style">
                  <xsl:text>width: </xsl:text>
                  <xsl:value-of select="$col3-width"/>
               </xsl:attribute>
            </xsl:if>
         </col>
         <tbody>
            <tr valign="baseline">
               <td align="right">
                  <xsl:if test="$itemlabel-colnum=1">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                  </xsl:if>
               </td>
               <td align="{$col2-align}">
                  <xsl:if test="$itemlabel-colnum=2">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                  </xsl:if>
               </td>
               <td>
                  <xsl:if test="$itemlabel-colnum=3">
                     <xsl:attribute name="style">word-break: keep-all; </xsl:attribute>
                  </xsl:if>
                  <!--Process this element's content-->
                  <xsl:apply-templates
                     select="node()[name(.)!='_sfe:BeforeOrAfterText' and name() != 'warning'  and name() != 'caution' ]"
                  />
               </td>
            </tr>
         </tbody>
      </table>
   </xsl:template>
   <!--Gentext template for Context: step5-->
   <xsl:template match="step5" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates mode="expand-gentext" select="@*|node()"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: step5-->
   <xsl:template match="step5" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates mode="set-countas" select="@*|node()"> </xsl:apply-templates>
      </xsl:copy>
   </xsl:template>
   
   <!--Template for Context: _ufe:supplier-list-title-->
   <xsl:template match="_ufe:supplier-list-title" priority="0">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x--ufe-supplier-list-title-4-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Style template for Context: atidlm:target-->
   <xsl:template name="__style-for_atidlm-target.1">
      <xsl:text> .x-atidlm-target-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: atidlm:target-->
   <xsl:template match="atidlm:target" priority="0">
      <span>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-atidlm-target-1-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id"/>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </span>
   </xsl:template>

   <!--Gentext template for Context: atidlm:target-->
   <xsl:template match="atidlm:target" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: atidlm:target-->
   <xsl:template match="atidlm:target" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Template for Context: pbfmatr//_ufe:task-title-->
   <xsl:template match="pbfmatr//_ufe:task-title" priority="1">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x--ufe-task-title-3-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Template for Context: _ufe:temp-rev-title-->
   <xsl:template match="_ufe:temp-rev-title" priority="0">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x--ufe-temp-rev-title-3-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Template for Context: book[contains(@doctype, 'ipc')]/frontmatter//figure/title-->
   <xsl:template match="book[contains(@doctype, 'ipc')]/frontmatter//figure/title" priority="68">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-title-5-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="book[contains(@doctype, 'ipc')]/frontmatter//figure/title" priority="68"
      mode="toc-mode-Table_of_Contents"><!--This title doesn't go into this ToC--></xsl:template>

   <!--Template for Context: module[@module-name='Airworthiness_Limits']/pgblk/title-->
   <xsl:template match="module[@module-name='Airworthiness_Limits']/pgblk/title" priority="65">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-title-8-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: module[@module-name='Airworthiness_Limits']/pgblk/title-->
   <xsl:template match="module[@module-name='Airworthiness_Limits']/pgblk/title"
      mode="expand-gentext" priority="65">
      <xsl:copy>
         <xsl:attribute name="_gte:unhidden-title">yes</xsl:attribute>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="module[@module-name='Airworthiness_Limits']/pgblk/title" priority="65"
      mode="toc-mode-Table_of_Contents"><!--This title doesn't go into this ToC--></xsl:template>

   <!--Template for Context: page-block[@pb-name='ni']//mfmatr/title-->
   <xsl:template match="page-block[@pb-name='ni']//mfmatr/title" priority="56">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-title-17-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: page-block[@pb-name='ni']//mfmatr/title-->
   <xsl:template match="page-block[@pb-name='ni']//mfmatr/title" mode="expand-gentext" priority="56">
      <xsl:copy>
         <xsl:attribute name="_gte:unhidden-title">yes</xsl:attribute>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="page-block[@pb-name='ni']//mfmatr/title" priority="56"
      mode="toc-mode-Table_of_Contents"><!--This title doesn't go into this ToC--></xsl:template>

   <!--Template for Context: page-block[@pb-name='record-of-revisions']//n-para/title-->
   <xsl:template match="page-block[@pb-name='record-of-revisions']//n-para/title" priority="55">
      <div>
         <xsl:attribute name="ch:title">toc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-title-18-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: page-block[@pb-name='record-of-revisions']//n-para/title-->
   <xsl:template match="page-block[@pb-name='record-of-revisions']//n-para/title"
      mode="expand-gentext" priority="55">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="_gte:unhidden-title">yes</xsl:attribute>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="page-block[@pb-name='record-of-revisions']//n-para/title" priority="55"
      mode="toc-mode-Table_of_Contents">
      <_sfe:TocEntry1_Table_of_Contents>
         <xsl:attribute name="tocentry-indent-class"> x-Table-of-Contents-toc-entry-indent-1</xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="attrname" select="'tocentry_id'"/>
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
            <xsl:with-param name="context-node" select="(.[self::_ufe:*]|..)[last()]"/>
         </xsl:call-template>
         <_sfe:TocTitle_Table_of_Contents>
            <xsl:if test="node()[not(self::_sfe:BeforeOrAfterText)]">
               <_gte:Gentexted-Content-Wrapper>
                  <xsl:apply-templates mode="expand-gentext">
                     <xsl:with-param name="skip-expanded-gentext" select="'yes'"/>
                  </xsl:apply-templates>
               </_gte:Gentexted-Content-Wrapper>
            </xsl:if>
         </_sfe:TocTitle_Table_of_Contents>
         <_sfe:TocPage_Table_of_Contents> </_sfe:TocPage_Table_of_Contents>
      </_sfe:TocEntry1_Table_of_Contents>
   </xsl:template>

   <!--Template for Context: book[contains(@doctype, 'epc')]//figure/title-->
   <xsl:template match="book[contains(@doctype, 'epc')]//figure/title" priority="54">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-title-19-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="book[contains(@doctype, 'epc')]//figure/title" priority="54"
      mode="toc-mode-Table_of_Contents"><!--This title doesn't go into this ToC--></xsl:template>

   <!--Template for Context: book[contains(@doctype, 'epc')]//graphic/title-->
   <xsl:template match="book[contains(@doctype, 'epc')]//graphic/title" priority="53">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-title-20-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="book[contains(@doctype, 'epc')]//graphic/title" priority="53"
      mode="toc-mode-Table_of_Contents"><!--This title doesn't go into this ToC--></xsl:template>

   <!--Template for Context: book[contains(@doctype, 'ipc')]//figure/title-->
   <xsl:template match="book[contains(@doctype, 'ipc')]//figure/title" priority="52">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-title-21-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="book[contains(@doctype, 'ipc')]//figure/title" priority="52"
      mode="toc-mode-Table_of_Contents"><!--This title doesn't go into this ToC--></xsl:template>

   <!--Template for Context: pbfmatr/title-->
   <xsl:template match="pbfmatr/title" priority="40">
      <xsl:param name="hidden" select="'yes'"/>
      <!--Dynamically determine the fo-class-->
      <xsl:variable name="foClass">
         <xsl:choose>
            <xsl:when
               test="((ancestor-or-self::pwcpbfront[1]/title)) and ((ancestor-or-self::pwcpbfront[1]/pbfmatr))">hidden</xsl:when>
            <xsl:otherwise>hidden-block</xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="blockness">block</xsl:variable>
      <xsl:variable name="hiddenness">yes</xsl:variable>
      <xsl:variable name="startnew"/>
      <xsl:variable name="newpageset">#noChange</xsl:variable>
      <xsl:variable name="fo-class">
         <xsl:choose>
            <xsl:when test="$hiddenness='yes'">
               <xsl:text>hidden-</xsl:text>
               <xsl:value-of select="$blockness"/>
            </xsl:when>
            <xsl:when test="$hiddenness='no' and starts-with($foClass,'hidden-')">
               <xsl:value-of select="substring($foClass,8)"/>
            </xsl:when>
            <xsl:when test="true()">
               <!--This is the "otherwise" clause, but there may be no when's-->
               <xsl:value-of select="$foClass"/>
            </xsl:when>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="given-lre-override-name"/>
      <xsl:variable name="lre-override-name">
         <xsl:call-template name="determine-lre-override-name">
            <xsl:with-param name="given-lre-override-name" select="$given-lre-override-name"/>
            <xsl:with-param name="fo-class" select="$fo-class"/>
         </xsl:call-template>
      </xsl:variable>
      <!--Execute the appropriate code for the dynamically determined fo-class-->
      <xsl:choose>
         <xsl:when test="$fo-class='hidden-block'">
            <div>
               <!--Emit class values to reflect conditions-->
               <xsl:attribute name="class">
                  <xsl:text> x-title-33-0</xsl:text>
                  <xsl:if
                     test="((ancestor-or-self::pwcpbfront[1]/title)) and ((ancestor-or-self::pwcpbfront[1]/pbfmatr))"> x-title-33-1</xsl:if>
               </xsl:attribute>
               <xsl:if test="@xml:lang">
                  <xsl:attribute name="lang">
                     <xsl:call-template name="return-lang-applying-language-map">
                        <xsl:with-param name="doclang" select="@xml:lang"/>
                     </xsl:call-template>
                  </xsl:attribute>
               </xsl:if>
               <xsl:copy-of select="@ch:*"/>
               <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap"
                  select="@dmp:*"/>
               <xsl:variable name="Breaks-chunkFilenameXPath"/>
               <xsl:variable name="Breaks-persistentFilename"/>
               <xsl:if
                  test="($Breaks-persistentFilename='yes') and ($Breaks-chunkFilenameXPath!='')">
                  <xsl:variable name="chunkFilename"/>
                  <xsl:if test="$chunkFilename!=''">
                     <xsl:attribute name="ch:filename">
                        <xsl:value-of select="$chunkFilename"/>
                     </xsl:attribute>
                     <xsl:attribute name="ch:namepriority">0</xsl:attribute>
                  </xsl:if>
               </xsl:if>
               <xsl:if test="@xml:lang">
                  <xsl:attribute name="lang">
                     <xsl:call-template name="return-lang-applying-language-map">
                        <xsl:with-param name="doclang" select="@xml:lang"/>
                     </xsl:call-template>
                  </xsl:attribute>
               </xsl:if>
               <xsl:call-template name="maybe-set-id"/>
               <!--Suppress element contents (but not gentext) unless unhidden-->
               <xsl:choose>
                  <xsl:when test="$hidden='no'">
                     <xsl:apply-templates/>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:apply-templates select="_sfe:BeforeOrAfterText"/>
                  </xsl:otherwise>
               </xsl:choose>
            </div>
         </xsl:when>
         <xsl:when test="$fo-class='block'">
            <div>
               <!--Emit class values to reflect conditions-->
               <xsl:attribute name="class">
                  <xsl:text> x-title-33-0</xsl:text>
                  <xsl:if
                     test="((ancestor-or-self::pwcpbfront[1]/title)) and ((ancestor-or-self::pwcpbfront[1]/pbfmatr))"> x-title-33-1</xsl:if>
               </xsl:attribute>
               <xsl:if test="@xml:lang">
                  <xsl:attribute name="lang">
                     <xsl:call-template name="return-lang-applying-language-map">
                        <xsl:with-param name="doclang" select="@xml:lang"/>
                     </xsl:call-template>
                  </xsl:attribute>
               </xsl:if>
               <xsl:copy-of select="@ch:*"/>
               <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap"
                  select="@dmp:*"/>
               <xsl:variable name="Breaks-chunkFilenameXPath"/>
               <xsl:variable name="Breaks-persistentFilename"/>
               <xsl:if
                  test="($Breaks-persistentFilename='yes') and ($Breaks-chunkFilenameXPath!='')">
                  <xsl:variable name="chunkFilename"/>
                  <xsl:if test="$chunkFilename!=''">
                     <xsl:attribute name="ch:filename">
                        <xsl:value-of select="$chunkFilename"/>
                     </xsl:attribute>
                     <xsl:attribute name="ch:namepriority">0</xsl:attribute>
                  </xsl:if>
               </xsl:if>
               <xsl:if test="@xml:lang">
                  <xsl:attribute name="lang">
                     <xsl:call-template name="return-lang-applying-language-map">
                        <xsl:with-param name="doclang" select="@xml:lang"/>
                     </xsl:call-template>
                  </xsl:attribute>
               </xsl:if>
               <xsl:call-template name="maybe-set-id"/>
               <!--Process this element's content-->
               <xsl:apply-templates/>
            </div>
         </xsl:when>
      </xsl:choose>
   </xsl:template>

   <!--Gentext template for Context: pbfmatr/title-->
   <xsl:template match="pbfmatr/title" mode="expand-gentext" priority="40">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:variable name="gentext-inserts-current-title">
            <xsl:choose>
               <xsl:when
                  test="((ancestor-or-self::pwcpbfront[1]/title)) and ((ancestor-or-self::pwcpbfront[1]/pbfmatr))">false</xsl:when>
               <xsl:otherwise>true</xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:attribute name="_gte:unhidden-title">
            <xsl:choose>
               <xsl:when test="$gentext-inserts-current-title='true'">yes</xsl:when>
               <xsl:otherwise>no</xsl:otherwise>
            </xsl:choose>
         </xsl:attribute>
         <xsl:choose>
            <xsl:when
               test="((ancestor-or-self::pwcpbfront[1]/title)) and ((ancestor-or-self::pwcpbfront[1]/pbfmatr))">
               <!--AddBefore Condition #1-->
               <xsl:if test="not(@_gte:Gentext-Expanded)">
                  <_sfe:BeforeOrAfterText/>
               </xsl:if>
            </xsl:when>
            <xsl:otherwise>
               <xsl:if test="not(@_gte:Gentext-Expanded)">
                  <_sfe:BeforeOrAfterText>
                     <_ufe:task-title>
                        <span style="text-decoration: underline; ">
                           <xsl:if test="node()[not(self::_sfe:BeforeOrAfterText)]">
                              <_gte:Gentexted-Content-Wrapper>
                                 <xsl:apply-templates mode="expand-gentext">
                                    <xsl:with-param name="skip-expanded-gentext" select="'yes'"/>
                                 </xsl:apply-templates>
                              </_gte:Gentexted-Content-Wrapper>
                           </xsl:if>
                        </span>
                     </_ufe:task-title>
                  </_sfe:BeforeOrAfterText>
               </xsl:if>
            </xsl:otherwise>
         </xsl:choose>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="pbfmatr/title" priority="40" mode="toc-mode-Table_of_Contents"><!--This title doesn't go into this ToC--></xsl:template>

   <!--Template for Context: pwcpbfront/title-->
   <xsl:template match="pwcpbfront/title" priority="39">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-title-34-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: pwcpbfront/title-->
   <xsl:template match="pwcpbfront/title" mode="expand-gentext" priority="39">
      <xsl:copy>
         <xsl:attribute name="_gte:unhidden-title">yes</xsl:attribute>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="pwcpbfront/title" priority="39" mode="toc-mode-Table_of_Contents"><!--This title doesn't go into this ToC--></xsl:template>

   <!--Template for Context: intro/title-->
   <xsl:template match="intro/title" priority="36">
      <xsl:param name="hidden" select="'yes'"/>
      <xsl:if test="$hidden='no'">
         <div>
            <!--Emit class values to reflect conditions-->
            <xsl:attribute name="class">
               <xsl:text> x-title-37-0</xsl:text>
            </xsl:attribute>
            <xsl:if test="@xml:lang">
               <xsl:attribute name="lang">
                  <xsl:call-template name="return-lang-applying-language-map">
                     <xsl:with-param name="doclang" select="@xml:lang"/>
                  </xsl:call-template>
               </xsl:attribute>
            </xsl:if>
            <xsl:copy-of select="@ch:*"/>
            <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
            <xsl:if test="@xml:lang">
               <xsl:attribute name="lang">
                  <xsl:call-template name="return-lang-applying-language-map">
                     <xsl:with-param name="doclang" select="@xml:lang"/>
                  </xsl:call-template>
               </xsl:attribute>
            </xsl:if>
            <xsl:call-template name="maybe-set-id"/>
            <!--Suppress element contents (but not gentext) unless unhidden-->
            <xsl:choose>
               <xsl:when test="$hidden='no'">
                  <xsl:apply-templates/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:apply-templates select="_sfe:BeforeOrAfterText"/>
               </xsl:otherwise>
            </xsl:choose>
         </div>
      </xsl:if>
   </xsl:template>

   <!--Gentext template for Context: intro/title-->
   <xsl:template match="intro/title" mode="expand-gentext" priority="36">
      <xsl:copy>
         <xsl:attribute name="_gte:unhidden-title">no</xsl:attribute>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="intro/title" priority="36" mode="toc-mode-Table_of_Contents"><!--This title doesn't go into this ToC--></xsl:template>

   <!--Template for Context: pwcspblist/title-->
   <xsl:template match="pwcspblist/title" priority="35">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-title-38-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: pwcspblist/title-->
   <xsl:template match="pwcspblist/title" mode="expand-gentext" priority="35">
      <xsl:copy>
         <xsl:attribute name="_gte:unhidden-title">yes</xsl:attribute>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Initial pass template for Context: pwcspblist/title-->


   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="pwcspblist/title" priority="35" mode="toc-mode-Table_of_Contents"><!--This title doesn't go into this ToC--></xsl:template>

   <!--Template for Context: sblist/title-->
   <xsl:template match="sblist/title" priority="32">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-title-41-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: sblist/title-->
   <xsl:template match="sblist/title" mode="expand-gentext" priority="32">
      <xsl:copy>
         <xsl:attribute name="_gte:unhidden-title">yes</xsl:attribute>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="sblist/title" priority="32" mode="toc-mode-Table_of_Contents"><!--This title doesn't go into this ToC--></xsl:template>

   <!--Template for Context: pwcni/title-->
   <xsl:template match="pwcni/title" priority="31">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-title-42-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: pwcni/title-->
   <xsl:template match="pwcni/title" mode="expand-gentext" priority="31">
      <xsl:copy>
         <xsl:attribute name="_gte:unhidden-title">yes</xsl:attribute>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="pwcni/title" priority="31" mode="toc-mode-Table_of_Contents"><!--This title doesn't go into this ToC--></xsl:template>

   <!--Template for Context: vendlist/title-->
   <xsl:template match="vendlist/title" priority="30">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-title-43-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: vendlist/title-->
   <xsl:template match="vendlist/title" mode="expand-gentext" priority="30">
      <xsl:copy>
         <xsl:attribute name="_gte:unhidden-title">yes</xsl:attribute>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="vendlist/title" priority="30" mode="toc-mode-Table_of_Contents"><!--This title doesn't go into this ToC--></xsl:template>

   <!--Template for Context: pgblk/title-->
   <xsl:template match="pgblk/title" priority="29">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-title-44-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="pgblk/title" priority="29" mode="toc-mode-Table_of_Contents"><!--This title doesn't go into this ToC--></xsl:template>

   <!--Template for Context: lof-item/title-->
   <xsl:template match="lof-item/title" priority="21">
      <div>
         <xsl:attribute name="ch:title">toc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-title-52-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: lof-item/title-->
   <xsl:template match="lof-item/title" mode="expand-gentext" priority="21">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="_gte:unhidden-title">yes</xsl:attribute>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="lof-item/title" priority="21" mode="toc-mode-Table_of_Contents">
      <_sfe:TocEntry6_Table_of_Contents>
         <xsl:attribute name="tocentry-indent-class"> x-Table-of-Contents-toc-entry-indent-6</xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="attrname" select="'tocentry_id'"/>
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
            <xsl:with-param name="context-node" select="(.[self::_ufe:*]|..)[last()]"/>
         </xsl:call-template>
         <_sfe:TocLabel_Table_of_Contents/>
         <_sfe:TocTitle_Table_of_Contents>
            <xsl:if test="node()[not(self::_sfe:BeforeOrAfterText)]">
               <_gte:Gentexted-Content-Wrapper>
                  <xsl:apply-templates mode="expand-gentext">
                     <xsl:with-param name="skip-expanded-gentext" select="'yes'"/>
                  </xsl:apply-templates>
               </_gte:Gentexted-Content-Wrapper>
            </xsl:if>
         </_sfe:TocTitle_Table_of_Contents>
         <_sfe:TocPage_Table_of_Contents> </_sfe:TocPage_Table_of_Contents>
      </_sfe:TocEntry6_Table_of_Contents>
   </xsl:template>

   <!--Template for Context: lof/title-->
   <xsl:template match="lof/title" priority="18">
      <div>
         <xsl:attribute name="ch:title">toc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-title-55-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: lof/title-->
   <xsl:template match="lof/title" mode="expand-gentext" priority="18">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="_gte:unhidden-title">yes</xsl:attribute>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="lof/title" priority="18" mode="toc-mode-Table_of_Contents">
      <_sfe:TocEntry5_Table_of_Contents>
         <xsl:attribute name="tocentry-indent-class"> x-Table-of-Contents-toc-entry-indent-5</xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="attrname" select="'tocentry_id'"/>
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
            <xsl:with-param name="context-node" select="(.[self::_ufe:*]|..)[last()]"/>
         </xsl:call-template>
         <_sfe:TocLabel_Table_of_Contents/>
         <_sfe:TocTitle_Table_of_Contents>
            <xsl:if test="node()[not(self::_sfe:BeforeOrAfterText)]">
               <_gte:Gentexted-Content-Wrapper>
                  <xsl:apply-templates mode="expand-gentext">
                     <xsl:with-param name="skip-expanded-gentext" select="'yes'"/>
                  </xsl:apply-templates>
               </_gte:Gentexted-Content-Wrapper>
            </xsl:if>
         </_sfe:TocTitle_Table_of_Contents>
         <_sfe:TocPage_Table_of_Contents> </_sfe:TocPage_Table_of_Contents>
      </_sfe:TocEntry5_Table_of_Contents>
   </xsl:template>

   <!--Template for Context: spb-list/title-->
   <xsl:template match="spb-list/title" priority="14">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-title-59-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: spb-list/title-->
   <xsl:template match="spb-list/title" mode="expand-gentext" priority="14">
      <xsl:copy>
         <xsl:attribute name="_gte:unhidden-title">yes</xsl:attribute>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="spb-list/title" priority="14" mode="toc-mode-Table_of_Contents"><!--This title doesn't go into this ToC--></xsl:template>

   <!--Template for Context: service-bull-list/title-->
   <xsl:template match="service-bull-list/title" priority="10">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-title-63-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: service-bull-list/title-->
   <xsl:template match="service-bull-list/title" mode="expand-gentext" priority="10">
      <xsl:copy>
         <xsl:attribute name="_gte:unhidden-title">yes</xsl:attribute>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="service-bull-list/title" priority="10" mode="toc-mode-Table_of_Contents"><!--This title doesn't go into this ToC--></xsl:template>

   <!--Template for Context: module/title-->
   <xsl:template match="module/title" priority="9">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-title-64-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: module/title-->
   <xsl:template match="module/title" mode="expand-gentext" priority="9">
      <xsl:copy>
         <xsl:attribute name="_gte:unhidden-title">yes</xsl:attribute>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="module/title" priority="9" mode="toc-mode-Table_of_Contents"><!--This title doesn't go into this ToC--></xsl:template>

   <!--Template for Context: num-index/title-->
   <xsl:template match="num-index/title" priority="7">
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-title-66-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: num-index/title-->
   <xsl:template match="num-index/title" mode="expand-gentext" priority="7">
      <xsl:copy>
         <xsl:attribute name="_gte:unhidden-title">yes</xsl:attribute>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--TocEntry template for tocNameReference=Table_of_Contents-->
   <xsl:template match="num-index/title" priority="7" mode="toc-mode-Table_of_Contents"><!--This title doesn't go into this ToC--></xsl:template>

   <!--Template for Context: _ufe:tmm-title-->
   <xsl:template match="_ufe:tmm-title" priority="0">
      <xsl:variable name="foClass">title</xsl:variable>
      <xsl:variable name="blockness">block</xsl:variable>
      <xsl:variable name="startnew"/>
      <xsl:variable name="newpageset">#noChange</xsl:variable>
      <div>
         <xsl:attribute name="ch:title">notoc</xsl:attribute>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x--ufe-tmm-title-3-0</xsl:text>
            <xsl:if test="contains(//book/@doctype, 'lmm')"> x--ufe-tmm-title-3-1</xsl:if>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:variable name="Breaks-chunkFilenameXPath"/>
         <xsl:variable name="Breaks-persistentFilename"/>
         <xsl:if test="($Breaks-persistentFilename='yes') and ($Breaks-chunkFilenameXPath!='')">
            <xsl:variable name="chunkFilename"/>
            <xsl:if test="$chunkFilename!=''">
               <xsl:attribute name="ch:filename">
                  <xsl:value-of select="$chunkFilename"/>
               </xsl:attribute>
               <xsl:attribute name="ch:namepriority">0</xsl:attribute>
            </xsl:if>
         </xsl:if>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:attribute name="id">
            <xsl:call-template name="object.id"/>
         </xsl:attribute>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Style template for Context: tool-list-->
   <xsl:template name="__style-for_tool-list.1">
      <xsl:text> .x-tool-list-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: tool-list-->
   <xsl:template match="tool-list" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: tool-list-->
   <xsl:template match="tool-list" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: tool-list-->
   <xsl:template match="tool-list" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: torque-and-stretch-->
   <xsl:template name="__style-for_torque-and-stretch.1">
      <xsl:text> .x-torque-and-stretch-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; font-size: 9pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: torque-and-stretch-->
   <xsl:template match="torque-and-stretch" priority="0">
      <div>
         <!--Emit class values to reflect conditions-->
         <xsl:attribute name="class">
            <xsl:text> x-torque-and-stretch-1-0</xsl:text>
         </xsl:attribute>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:copy-of select="@ch:*"/>
         <xsl:copy-of xmlns:dmp="http://www.arbortext.com/namespace/dmp/dmpmap" select="@dmp:*"/>
         <xsl:if test="@xml:lang">
            <xsl:attribute name="lang">
               <xsl:call-template name="return-lang-applying-language-map">
                  <xsl:with-param name="doclang" select="@xml:lang"/>
               </xsl:call-template>
            </xsl:attribute>
         </xsl:if>
         <xsl:call-template name="maybe-set-id">
            <xsl:with-param name="only-if-id-attr" select="'no'"/>
            <xsl:with-param name="generated-id-prefix" select="'styler-id'"/>
         </xsl:call-template>
         <!--Process this element's content-->
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <!--Gentext template for Context: torque-and-stretch-->
   <xsl:template match="torque-and-stretch" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: torque-and-stretch-->
   <xsl:template match="torque-and-stretch" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: trdata-->
   <xsl:template name="__style-for_trdata.1">
      <xsl:text> .x-trdata-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: trdata-->
   <xsl:template match="trdata" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: trdata-->
   <xsl:template match="trdata" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: trdata-->
   <xsl:template match="trdata" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: trlist-->
   <xsl:template name="__style-for_trlist.1">
      <xsl:text> .x-trlist-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: trlist-->
   <xsl:template match="trlist" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: trlist-->
   <xsl:template match="trlist" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: trlist-->
   <xsl:template match="trlist" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: trloc-->
   <xsl:template name="__style-for_trloc.1">
      <xsl:text> .x-trloc-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: trloc-->
   <xsl:template match="trloc" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: trloc-->
   <xsl:template match="trloc" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: trloc-->
   <xsl:template match="trloc" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: trnbr-->
   <xsl:template name="__style-for_trnbr.1">
      <xsl:text> .x-trnbr-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: trnbr-->
   <xsl:template match="trnbr" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: trnbr-->
   <xsl:template match="trnbr" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: trnbr-->
   <xsl:template match="trnbr" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Style template for Context: trstatus-->
   <xsl:template name="__style-for_trstatus.1">
      <xsl:text> .x-trstatus-1-0 {margin-left: 0pt; margin-right: 0pt; }</xsl:text>
   </xsl:template>

   <!--Template for Context: trstatus-->
   <xsl:template match="trstatus" priority="0">
      <!--Emit a nostyle template-->
      <xsl:apply-templates/>
   </xsl:template>

   <!--Gentext template for Context: trstatus-->
   <xsl:template match="trstatus" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Set count-as pass template for Context: trstatus-->
   <xsl:template match="trstatus" mode="set-countas" priority="0">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()" mode="set-countas"/>
      </xsl:copy>
   </xsl:template>

   <!--Gentext template for Context: table/title/xref[id(@ref)/self::figure]-->
   <xsl:template match="table/title/xref[id(@ref)/self::figure]" mode="expand-gentext" priority="7">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <_sfe:CrossReference>
                  <xsl:variable name="division-name-token-list"> alpha-list ata-page-block book
                     bullist chapsect-list chapter consumables enumlist figure fits-and-clears
                     fixtures-and-equipment frontmatter general highlights intro list lof lof-item
                     lot lot-item mm-fits module n-para num-index num-list page-block procedure
                     sblist section spec-tool-table special-tools subject subpara table title-page
                     torque-and-stretch unlist </xsl:variable>
                  <xsl:variable name="refed-id" select="@ref"/>
                  <xsl:variable name="idrefed-element-name"
                     select="concat(' ',name((//*[@_gte:id=$refed-id])[1]),' ')"/>
                  <_gte:Link linkRef="{@ref}">
                     <xsl:choose>
                        <xsl:when test="contains($division-name-token-list,$idrefed-element-name)">
                           <_gte:deferredCrossReference xrefStyle="Number" refed-id="{@ref}"/>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:apply-templates select="(//*[@_gte:id=$refed-id])[1]"
                              mode="styler_xref-Number"/>
                        </xsl:otherwise>
                     </xsl:choose>
                  </_gte:Link>
               </_sfe:CrossReference>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Gentext template for Context: xref[name(id(@ref))='table' and (id(@ref)/ancestor::figure or id(@ref)/ancestor::graphic)]-->
   <xsl:template
      match="xref[name(id(@ref))='table' and (id(@ref)/ancestor::figure or id(@ref)/ancestor::graphic)]"
      mode="expand-gentext" priority="3">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <_sfe:CrossReference>
                  <xsl:variable name="division-name-token-list"> alpha-list ata-page-block book
                     bullist chapsect-list chapter consumables enumlist figure fits-and-clears
                     fixtures-and-equipment frontmatter general highlights intro list lof lof-item
                     lot lot-item mm-fits module n-para num-index num-list page-block procedure
                     sblist section spec-tool-table special-tools subject subpara table title-page
                     torque-and-stretch unlist </xsl:variable>
                  <xsl:variable name="refed-id" select="@ref"/>
                  <xsl:variable name="idrefed-element-name"
                     select="concat(' ',name((//*[@_gte:id=$refed-id])[1]),' ')"/>
                  <_gte:Link linkRef="{@ref}">
                     <xsl:choose>
                        <xsl:when test="contains($division-name-token-list,$idrefed-element-name)">
                           <_gte:deferredCrossReference xrefStyle="Number" refed-id="{@ref}"/>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:apply-templates select="(//*[@_gte:id=$refed-id])[1]"
                              mode="styler_xref-Number"/>
                        </xsl:otherwise>
                     </xsl:choose>
                  </_gte:Link>
               </_sfe:CrossReference>
               <xsl:text> </xsl:text>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Gentext template for Context: xref[id(@ref)/self::table]-->
   <xsl:template match="xref[id(@ref)/self::table]" mode="expand-gentext" priority="2">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <!--Unconditional AddBefore-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <_sfe:CrossReference>
                  <xsl:variable name="division-name-token-list"> alpha-list ata-page-block book
                     bullist chapsect-list chapter consumables enumlist figure fits-and-clears
                     fixtures-and-equipment frontmatter general highlights intro list lof lof-item
                     lot lot-item mm-fits module n-para num-index num-list page-block procedure
                     sblist section spec-tool-table special-tools subject subpara table title-page
                     torque-and-stretch unlist </xsl:variable>
                  <xsl:variable name="refed-id" select="@ref"/>
                  <xsl:variable name="idrefed-element-name"
                     select="concat(' ',name((//*[@_gte:id=$refed-id])[1]),' ')"/>
                  <_gte:Link linkRef="{@ref}">
                     <xsl:choose>
                        <xsl:when test="contains($division-name-token-list,$idrefed-element-name)">
                           <_gte:deferredCrossReference xrefStyle="Number" refed-id="{@ref}"/>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:apply-templates select="(//*[@_gte:id=$refed-id])[1]"
                              mode="styler_xref-Number"/>
                        </xsl:otherwise>
                     </xsl:choose>
                  </_gte:Link>
               </_sfe:CrossReference>
               <xsl:text> </xsl:text>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
      </xsl:copy>
   </xsl:template>

   <!--Gentext template for Context: xref-->
   <xsl:template match="xref" mode="expand-gentext" priority="0">
      <xsl:copy>
         <xsl:attribute name="_gte:Gentext-Expanded">y</xsl:attribute>
         <xsl:apply-templates select="@*" mode="expand-gentext"/>
         <xsl:if test="not(@_gte:id)">
            <xsl:attribute name="_gte:id">
               <xsl:value-of select="'_g_'"/>
               <xsl:value-of select="generate-id(.)"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:apply-templates select="* | text() | processing-instruction()" mode="expand-gentext"/>
         <!--Unconditional AddAfter-->
         <xsl:if test="not(@_gte:Gentext-Expanded)">
            <_sfe:BeforeOrAfterText>
               <_sfe:CrossReference>
                  <xsl:variable name="division-name-token-list"> alpha-list ata-page-block book
                     bullist chapsect-list chapter consumables enumlist figure fits-and-clears
                     fixtures-and-equipment frontmatter general highlights intro list lof lof-item
                     lot lot-item mm-fits module n-para num-index num-list page-block procedure
                     sblist section spec-tool-table special-tools subject subpara table title-page
                     torque-and-stretch unlist </xsl:variable>
                  <xsl:variable name="refed-id" select="@ref"/>
                  <xsl:variable name="idrefed-element-name"
                     select="concat(' ',name((//*[@_gte:id=$refed-id])[1]),' ')"/>
                  <_gte:Link linkRef="{@ref}">
                     <xsl:choose>
                        <xsl:when test="contains($division-name-token-list,$idrefed-element-name)">
                           <_gte:deferredCrossReference xrefStyle="Number" refed-id="{@ref}"/>
                        </xsl:when>
                        <xsl:otherwise>
                           <xsl:apply-templates select="(//*[@_gte:id=$refed-id])[1]"
                              mode="styler_xref-Number"/>
                        </xsl:otherwise>
                     </xsl:choose>
                  </_gte:Link>
               </_sfe:CrossReference>
            </_sfe:BeforeOrAfterText>
         </xsl:if>
      </xsl:copy>
   </xsl:template>

   <!--Global ReferenceFormat template for referenceFormatName=Label_Number-->
   <xsl:template match="*" mode="styler_xref-Label_Number">
      <xsl:apply-templates mode="styler-LabelAndNumberMarker" select="."/>
   </xsl:template>

   <!--Global ReferenceFormat template for referenceFormatName=Label_Number_Text-->
   <xsl:template match="*" mode="styler_xref-Label_Number_Text">
      <xsl:apply-templates mode="styler-LabelAndNumberMarker" select="."/>
      <xsl:text> </xsl:text>
      <_sfe:CrossReferenceTitle>
         <xsl:if test="node()[not(self::_sfe:BeforeOrAfterText)]">
            <_gte:Gentexted-Content-Wrapper>
               <xsl:apply-templates mode="expand-gentext">
                  <xsl:with-param name="skip-expanded-gentext" select="'yes'"/>
               </xsl:apply-templates>
            </_gte:Gentexted-Content-Wrapper>
         </xsl:if>
      </_sfe:CrossReferenceTitle>
   </xsl:template>

   <!--Global ReferenceFormat template for referenceFormatName=Label_Number_Text_Page-->
   <xsl:template match="*" mode="styler_xref-Label_Number_Text_Page">
      <xsl:apply-templates mode="styler-LabelAndNumberMarker" select="."/>
      <xsl:text> </xsl:text>
      <_sfe:CrossReferenceTitle>
         <xsl:if test="node()[not(self::_sfe:BeforeOrAfterText)]">
            <_gte:Gentexted-Content-Wrapper>
               <xsl:apply-templates mode="expand-gentext">
                  <xsl:with-param name="skip-expanded-gentext" select="'yes'"/>
               </xsl:apply-templates>
            </_gte:Gentexted-Content-Wrapper>
         </xsl:if>
      </_sfe:CrossReferenceTitle>
      <xsl:text>, page </xsl:text>
   </xsl:template>

   <!--Global ReferenceFormat template for referenceFormatName=Number-->
   <xsl:template match="*" mode="styler_xref-Number">
      <_gte:styler_numbering do-qmark="no">
         <xsl:variable name="gte_id">
            <xsl:choose>
               <xsl:when test="@_gte:id">
                  <xsl:value-of select="@_gte:id"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="'_g_'"/>
                  <xsl:value-of select="generate-id(.)"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:attribute name="gte_id">
            <xsl:value-of select="$gte_id"/>
         </xsl:attribute>
      </_gte:styler_numbering>
   </xsl:template>

   <!--Global ReferenceFormat template for referenceFormatName=Number_Text-->
   <xsl:template match="*" mode="styler_xref-Number_Text">
      <_gte:styler_numbering do-qmark="no">
         <xsl:variable name="gte_id">
            <xsl:choose>
               <xsl:when test="@_gte:id">
                  <xsl:value-of select="@_gte:id"/>
               </xsl:when>
               <xsl:otherwise>
                  <xsl:value-of select="'_g_'"/>
                  <xsl:value-of select="generate-id(.)"/>
               </xsl:otherwise>
            </xsl:choose>
         </xsl:variable>
         <xsl:attribute name="gte_id">
            <xsl:value-of select="$gte_id"/>
         </xsl:attribute>
      </_gte:styler_numbering>
      <xsl:text> </xsl:text>
      <_sfe:CrossReferenceTitle>
         <xsl:if test="node()[not(self::_sfe:BeforeOrAfterText)]">
            <_gte:Gentexted-Content-Wrapper>
               <xsl:apply-templates mode="expand-gentext">
                  <xsl:with-param name="skip-expanded-gentext" select="'yes'"/>
               </xsl:apply-templates>
            </_gte:Gentexted-Content-Wrapper>
         </xsl:if>
      </_sfe:CrossReferenceTitle>
   </xsl:template>

   <!--Global ReferenceFormat template for referenceFormatName=Page-->
   <xsl:template match="*" mode="styler_xref-Page">
   </xsl:template>

   <!--Global ReferenceFormat template for referenceFormatName=Text-->
   <xsl:template match="*" mode="styler_xref-Text">
      <_sfe:CrossReferenceTitle>
         <xsl:if test="node()[not(self::_sfe:BeforeOrAfterText)]">
            <_gte:Gentexted-Content-Wrapper>
               <xsl:apply-templates mode="expand-gentext">
                  <xsl:with-param name="skip-expanded-gentext" select="'yes'"/>
               </xsl:apply-templates>
            </_gte:Gentexted-Content-Wrapper>
         </xsl:if>
      </_sfe:CrossReferenceTitle>
   </xsl:template>

   <!--Named template for TableOfContents=Table_of_Contents-->
   <xsl:template name="_gte-toc-Table_of_Contents">
      <xsl:apply-templates mode="toc-mode-Table_of_Contents"
         select="//_ufe:chapsect-title|//_ufe:consumables-title|//_ufe:consumables-title|//_ufe:fixequ-title|//_ufe:fixequ-title|//_ufe:general-title|//_ufe:general-title|//manual-title|//pageblock-title|//pageblock-title|//_ufe:spectools-title|//_ufe:spectools-title|//title|//title|//title|//title|//title|//title|//title|//title|//title|//title|//title|//title|//title|//title"
      />
   </xsl:template>

   <!--Template to generate external CSS file-->
   <xsl:template name="generate-external-css-file">
      <xsl:if test="$external-css-filename!=''">
         <xsl:result-document href="{$external-css-filename}" method="text" indent="yes"> &#xD;
               <xsl:variable name="effective-document-elemname"
               select="name(//*[not(self::RDStyle) and not(self::ResolvedMap)][1])"/>
            <xsl:choose>
               <xsl:when test="$effective-document-elemname='book'">
                  <xsl:text>body {font-family: serif; font-weight: normal; font-style: normal; score-spaces: true; line-height: 1.1; margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-family: Verdana; font-size: 10pt; margin-left: 5px; width: 95%; }</xsl:text>
               </xsl:when>
               <xsl:when test="true()"/>
            </xsl:choose> &#xD; &#xD; .x--sfe-BeforeOrAfterText-1-0 {margin-left: 0pt; margin-right:
            0pt; } &#xD; &#xD; .x--sfe-CollectionItem-1-0 {margin-left: 0pt; margin-right: 0pt; }
            &#xD; &#xD; .x--sfe-CollectionItem-2-0 {margin-left: 0pt; margin-right: 0pt; } &#xD;
            &#xD; .x--sfe-CollectionItem-3-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x--sfe-CollectionItem-4-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x--sfe-CrossReference-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x--sfe-CrossReferenceTitle-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x--sfe-CrossReferenceTitle-2-0 {margin-left: 0pt; margin-right: 0pt; font-style:
            italic; } &#xD; &#xD; .x--sfe-ExternalLink-1-0 {margin-left: 0pt; margin-right: 0pt;
            color: #0000FF; text-decoration: underline ; } &#xD; &#xD; .x--sfe-Gentext-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x--sfe-HeaderOrFooter-1-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 0pt; } &#xD; &#xD;
            .x--sfe-Index-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--sfe-IndexAlphaGroup-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 1.5pc; } &#xD; &#xD; .x--sfe-IndexEndPage-1-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x--sfe-IndexEntry-1-0 {margin-left: 0pt; margin-right:
            0pt; text-indent: 0pt; margin-left: 1em; text-indent: -.5em; text-align: left; } &#xD;
            &#xD; .x--sfe-IndexEntry-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-left: 1em; text-indent: -.5em; text-align: left; } &#xD; &#xD;
            .x--sfe-IndexEntry-3-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-left: 1em; text-indent: -.5em; text-align: left; } &#xD; &#xD;
            .x--sfe-IndexEntry-4-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-left: .5em; margin-right: 2pc; text-indent: -.5em; text-align: left; } &#xD;
            &#xD; .x--sfe-IndexGroupHead-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; font-weight: bold; font-size: 14pt; text-transform: uppercase;
            text-align: left; margin-bottom: .5pc; } &#xD; &#xD; .x--sfe-IndexHeading-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x--sfe-IndexLocators-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x--sfe-IndexPage-1-0 {margin-left:
            0pt; margin-right: 0pt; } &#xD; &#xD; .x--sfe-IndexPage-2-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x--sfe-IndexPostGroup-1-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 1.5pc; } &#xD; &#xD;
            .x--sfe-IndexPreGroup-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 1.5pc; } &#xD; &#xD; .x--sfe-IndexRangeGroup-1-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 1.5pc; } &#xD; &#xD;
            .x--sfe-IndexSee-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x--sfe-IndexSeeAlso-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-left: 3em; text-indent: -1.5em; } &#xD; &#xD; .x--sfe-IndexSubGroupHead-1-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-weight: bold; font-size:
            14pt; text-transform: uppercase; text-align: left; margin-top: 2pc; } &#xD; &#xD;
            .x--sfe-InternalLink-1-0 {margin-left: 0pt; margin-right: 0pt; color: #0000FF;
            text-decoration: underline ; } &#xD; &#xD; .x--sfe-RepeatingTitle-1-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD; .x--sfe-TableOfContents-1-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--sfe-TocEntry1-Table-of-Contents-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-left: 4em; margin-right: 2pc; text-indent: -4.00em; } &#xD;
            &#xD; .x--sfe-TocEntry2-Table-of-Contents-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-left: 6em; margin-right: 2pc; text-indent: -4.00em; } &#xD;
            &#xD; .x--sfe-TocEntry3-Table-of-Contents-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-left: 8em; margin-right: 2pc; text-indent: -4.00em; } &#xD;
            &#xD; .x--sfe-TocEntry4-Table-of-Contents-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-left: 10em; margin-right: 2pc; text-indent: -4.00em; } &#xD;
            &#xD; .x--sfe-TocEntry5-Table-of-Contents-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-left: 12em; margin-right: 2pc; text-indent: -12em; } &#xD;
            &#xD; .x--sfe-TocEntry6-Table-of-Contents-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-left: 14em; margin-right: 2pc; text-indent: -14em; } &#xD;
            &#xD; .x--sfe-TocLabel-Table-of-Contents-1-0 {margin-left: 0pt; margin-right: 0pt; }
            &#xD; &#xD; .x--sfe-TocPage-Table-of-Contents-1-0 {margin-left: 0pt; margin-right: 0pt;
            } &#xD; &#xD; .x--sfe-TocTable-of-Contents-1-0 {margin-left: 0pt; margin-right: 0pt; }
            &#xD; &#xD; .x--sfe-TocTitle-Table-of-Contents-1-0 {margin-left: 0pt; margin-right: 0pt;
            } &#xD; &#xD; .x-address-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-address-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt;
            margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-address-3-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom:
            6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-address-4-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x-address-5-0 {margin-left: 0pt; margin-right:
            0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt;
            text-indent: 0pt; } &#xD; &#xD; .x-address-6-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x-address-7-0 {margin-left: 0pt; margin-right: 0pt; text-indent:
            0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD;
            &#xD; .x-address-8-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top:
            6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-aispart-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-alpha-list-1-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; } &#xD; &#xD;
            .x-annot-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-annot-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-applic-group-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x-applic-item-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-at-length-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-att-1-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; margin-left: 61.00pt; text-indent:
            -60pt; margin-bottom: 8pt; } &#xD; &#xD; .x-att-2-0 {margin-left: 0pt; margin-right:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x-aw-notice-1-0 {margin-left: 0pt; margin-right:
            0pt; text-indent: 0pt; font-weight: normal; font-size: 11pt; text-align: center; } &#xD;
            &#xD; .x-awlror-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD;
            &#xD; .x-awlrorsection-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x-barend-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-barstart-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x--ufe-block-nospace-1-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-block-prespace-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 8pt; } &#xD; &#xD; .x-book-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-family: Verdana; font-size: 10pt; } &#xD; &#xD; .x-brk-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-build-spec-1-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-bullist-1-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; } &#xD; &#xD; .x-callout-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-callout-2-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-caution-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 8pt; font-weight: bold; margin-left: 81pt; text-indent:
            -63pt; } &#xD; &#xD; .x-caution-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent:
            0pt; margin-top: 8pt; font-weight: bold; margin-left: 81pt; text-indent: -63pt; } &#xD;
            &#xD; .x-caution-3-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top:
            8pt; font-weight: bold; margin-left: 87pt; text-indent: -63pt; } &#xD; &#xD;
            .x-caution-4-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt;
            font-weight: bold; margin-left: 98pt; text-indent: -63pt; } &#xD; &#xD; .x-caution-5-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; font-weight:
            bold; margin-left: 98pt; text-indent: -63pt; } &#xD; &#xD; .x-caution-6-0 {margin-left:
            0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-caution-7-0 {margin-left:
            0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-caution-8-0 {margin-left:
            0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-caution-9-0 {margin-left:
            0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-caution-10-0 {margin-left:
            0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-caution-11-0 {margin-left:
            0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; font-weight: bold;
            margin-left: 80pt; text-indent: -62pt; } &#xD; &#xD; .x-caution-12-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; font-weight: bold; margin-left:
            64pt; text-indent: -63pt; margin-top: 10pt; } &#xD; &#xD; .x--ufe-center-1-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; text-align: center; } &#xD;
            &#xD; .x-ch-se-su-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-change-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-chapsect-1-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-chapsect-item-1-0 {margin-left: 0pt; margin-right:
            0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; } &#xD; &#xD;
            .x-chapsect-list-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top:
            8pt; } &#xD; &#xD; .x-chapsect-title-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; } &#xD; &#xD;
            .x--ufe-chapsect-title-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-chapsect-title-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-chapsect-title-3-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-weight: bold; font-size: 14pt; } &#xD; &#xD; .x-chapter-1-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-chapter-front-1-0 {margin-left:
            0pt; margin-right: 0pt; } &#xD; &#xD; .x-chgdesc-1-0 {margin-left: 0pt; margin-right:
            0pt; } &#xD; &#xD; .x--ufe-cir-title-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-family: sans-serif; color: #0000FF; text-align: left;
            line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x--ufe-cir-title-2-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-family: sans-serif; color: #0000FF; text-align: left;
            line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x--ufe-cir-title-3-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-weight: bold; font-size: 36pt; text-align: center; margin-bottom:
            12pt; } &#xD; &#xD; .x-city-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD;
            .x-city-1-1 {} &#xD; &#xD; .x-co-name-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; } &#xD; &#xD; .x-colspec-1-0 {margin-left: 0pt; margin-right: 0pt; }
            &#xD; &#xD; .x-comment-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x-consumable-1-0 {margin-left: 0pt; margin-right: 0pt; color: #000080; text-decoration:
            underline ; } &#xD; &#xD; .x-consumables-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 8pt; } &#xD; .x-consumables-1-1 {} &#xD; &#xD;
            .x--ufe-consumables-title-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-consumables-title-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-consumables-title-3-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-consumables-title-4-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-weight: bold; margin-left: 1.5em; text-indent: -1.5em; } &#xD; &#xD;
            .x--ufe-consumables-title-5-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-weight: bold; margin-left: 1.5em; text-indent: -1.5em; } &#xD; &#xD;
            .x--ufe-consumables-title-6-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }
            &#xD; &#xD; .x-consume-list-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            } &#xD; &#xD; .x-country-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }
            &#xD; &#xD; .x-csu-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD;
            &#xD; .x-csu-instance-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x-dash-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-def-1-0 {margin-left:
            0pt; margin-right: 0pt; } &#xD; &#xD; .x-def-2-0 {margin-left: 0pt; margin-right: 0pt; }
            &#xD; &#xD; .x-def-3-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x-deflist-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-left:
            29pt; text-indent: 0pt; } &#xD; &#xD; .x-deflist-2-0 {margin-left: 0pt; margin-right:
            0pt; text-indent: 0pt; margin-top: 8pt; font-size: 9pt; } &#xD; &#xD; .x-delete-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-deleted-1-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-denom-1-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; text-align: center; } &#xD; &#xD; .x-describe-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-description-1-0 {margin-left:
            0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-effec-1-0 {margin-left: 0pt;
            margin-right: 0pt; font-weight: bold; } &#xD; &#xD; .x--ufe-eipc-title-1-0 {margin-left:
            0pt; margin-right: 0pt; text-indent: 0pt; font-family: sans-serif; color: #0000FF;
            text-align: left; line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x--ufe-eipc-title-2-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; font-family: sans-serif; color: #0000FF;
            text-align: left; line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x--ufe-eipc-title-3-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; font-weight: bold; font-size: 36pt; text-align:
            center; margin-bottom: 12pt; } &#xD; &#xD; .x--ufe-em-title-1-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; font-family: sans-serif; color: #0000FF;
            text-align: left; line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x--ufe-em-title-2-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; font-family: sans-serif; color: #0000FF;
            text-align: left; line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x--ufe-em-title-3-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; font-weight: bold; font-size: 36pt; text-align:
            center; margin-bottom: 12pt; } &#xD; &#xD; .x-email-1-0 {margin-left: 0pt; margin-right:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x--ufe-email-link-1-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-emphasis-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; } &#xD; .x-emphasis-1-1 {font-weight: bold; text-align: center; }
            &#xD; .x-emphasis-1-2 {margin-left: 8pt; text-indent: 0pt; } &#xD; .x-emphasis-1-3
            {margin-left: 12pt; text-indent: 0pt; } &#xD; .x-emphasis-1-4 {margin-left: 16pt;
            text-indent: 0pt; } &#xD; .x-emphasis-1-5 {margin-left: 20pt; text-indent: 0pt; } &#xD;
            &#xD; .x-emphasis-2-0 {margin-left: 0pt; margin-right: 0pt; font-weight: bold; } &#xD;
            .x-emphasis-2-1 {font-weight: bold; } &#xD; &#xD; .x-endmulti-1-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-engine-1-0 {margin-left: 0pt; margin-right: 0pt; }
            &#xD; &#xD; .x-engine-2-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x--ufe-engine-type-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-bottom: 12pt; } &#xD; .x--ufe-engine-type-1-1 {} &#xD; .x--ufe-engine-type-1-2 {}
            &#xD; .x--ufe-engine-type-1-3 {} &#xD; .x--ufe-engine-type-1-4 {} &#xD; &#xD;
            .x-entry-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-enumlist-1-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; font-size: 9pt;
            } &#xD; &#xD; .x-eqn-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: Arial; font-size: 9pt; text-align: center; margin-bottom: 11pt; } &#xD;
            &#xD; .x-eqn-2-0 {margin-left: 0pt; margin-right: 0pt; font-family: Arial; font-size:
            9pt; } &#xD; &#xD; .x-eqn-3-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: Arial; font-size: 9pt; margin-bottom: 11pt; } &#xD; &#xD; .x-eqn-4-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-family: Arial; font-size:
            9pt; margin-bottom: 11pt; } &#xD; &#xD; .x-facility-1-0 {margin-left: 0pt; margin-right:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x-fandc-1-0 {margin-left: 0pt; margin-right: 0pt;
            } &#xD; &#xD; .x-fandc-note-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x-fandc-proc-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-fax-1-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-fax-2-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-fig-title-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-weight: bold; font-size: 14pt; } &#xD; &#xD; .x-figno-1-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-figno-2-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-figure-2-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; } &#xD; &#xD; .x-fits-1-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-fits-and-clears-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 8pt; } &#xD; &#xD; .x-fix-equip-1-0 {margin-left: 0pt; margin-right: 0pt; }
            &#xD; &#xD; .x-fix-equip-list-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x--ufe-fixequ-title-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-fixequ-title-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-fixequ-title-3-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-fixequ-title-4-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-weight: bold; margin-left: 1.5em; text-indent: -1.5em; } &#xD; &#xD;
            .x--ufe-fixequ-title-5-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-weight: bold; margin-left: 1.5em; text-indent: -1.5em; } &#xD; &#xD;
            .x--ufe-fixequ-title-6-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD;
            &#xD; .x-fixtures-and-equipment-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent:
            0pt; margin-top: 8pt; } &#xD; .x-fixtures-and-equipment-1-1 {} &#xD; &#xD; .x-frac-2-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-frontmatter-1-0 {margin-left:
            0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-general-1-0 {margin-left:
            0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; } &#xD; &#xD;
            .x--ufe-general-title-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-general-title-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-general-title-3-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-general-title-4-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-weight: bold; margin-left: 1.5em; text-indent: -1.5em; } &#xD; &#xD;
            .x--ufe-general-title-5-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-weight: bold; margin-left: 1.5em; text-indent: -1.5em; } &#xD; &#xD;
            .x--ufe-general-title-6-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }
            &#xD; &#xD; .x--ufe-glossary-title-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-family: sans-serif; color: #0000FF; text-align: left;
            line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x--ufe-glossary-title-2-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-family: sans-serif; color: #0000FF; text-align: left;
            line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x--ufe-glossary-title-3-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-family: sans-serif; color: #0000FF; text-align: left;
            line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x--ufe-glossary-title-4-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-weight: bold; font-size: 14pt; } &#xD; &#xD; .x--ufe-hidden-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x--ufe-highlights-link-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-history-1-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-hl-fragment-1-0 {margin-left: 0pt; margin-right:
            0pt; } &#xD; &#xD; .x--ufe-howtouse-title-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-family: sans-serif; color: #0000FF; text-align: left;
            line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x--ufe-howtouse-title-2-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-family: sans-serif; color: #0000FF; text-align: left;
            line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x--ufe-howtouse-title-3-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-weight: bold; font-size: 14pt; } &#xD; &#xD; .x-ifr-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-imp-1-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-atidlm-inclusion-1-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-insert-1-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-int-mail-1-0 {margin-left: 0pt; margin-right: 0pt; }
            &#xD; &#xD; .x-intro-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 8pt; margin-left: 4pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-intro-title-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-intro-title-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-intro-title-3-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-weight: bold; font-size: 14pt; } &#xD; &#xD; .x-isempty-1-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-item-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; font-size: 9pt; margin-left: 0pt;
            text-indent: 0pt; } &#xD; &#xD; .x-item-2-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x-item-3-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-item-4-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt;
            margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-item-5-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom:
            6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-item-6-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x-item-7-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x-item-8-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-item-9-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt;
            margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-item-10-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom:
            6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-item-11-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x-item-12-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x-item-13-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-item-14-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt;
            margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-item-17-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom:
            6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-item-18-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x-item-19-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x-item-20-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-item-21-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt;
            margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-item-22-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom:
            6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-item-23-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x-item-24-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x-item-25-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-item-26-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt;
            margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-item-27-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom:
            6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-item-28-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; font-size:
            9pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-item-29-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; font-size:
            9pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-item-30-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x-item-31-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x-item-nbr-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x-key-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }
            &#xD; &#xD; .x-limits-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x-atidlm-linkcontent-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }
            &#xD; &#xD; .x-list-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 8pt; margin-left: 1.5em; text-indent: 1.5em; } &#xD; &#xD; .x-list-2-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; font-size: 9pt;
            } &#xD; &#xD; .x-lof-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD;
            &#xD; .x-lof-item-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 8pt; } &#xD; &#xD; .x-lot-item-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 8pt; } &#xD; &#xD; .x-maint-level-1-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-manual-pn-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-size: 16pt; color: #666666; text-align: center; margin-bottom:
            12pt; } &#xD; &#xD; .x-manual-title-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-family: sans-serif; color: #0000FF; text-align: left;
            line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x-manual-title-2-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-family: sans-serif; color: #0000FF; text-align: left;
            line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x-manual-title-3-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-family: sans-serif; color: #0000FF; text-align: left;
            line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x-manual-title-4-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-weight: bold; font-size: 36pt; text-align: center; margin-bottom:
            12pt; } &#xD; &#xD; .x-marker-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x-mating-part-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-max-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-met-1-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-atidlm-metadata-1-0 {margin-left: 0pt; margin-right:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x-min-1-0 {margin-left: 0pt; margin-right: 0pt; }
            &#xD; &#xD; .x-mm-fits-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 8pt; } &#xD; &#xD; .x-model-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-weight: bold; font-size: 18pt; text-align: center; } &#xD; &#xD;
            .x-module-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD;
            .x-module-1-1 {} &#xD; .x-module-1-2 {} &#xD; .x-module-1-3 {} &#xD; .x-module-1-4 {}
            &#xD; &#xD; .x-module-item-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x-multi-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-n-para-1-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; } &#xD; &#xD;
            .x-name-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-no-street-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-nobrk-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-nomen-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x--ufe-not-applicable-1-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; margin-left:
            18pt; text-indent: 0pt; } &#xD; &#xD; .x-note-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 8pt; margin-left: 61pt; text-indent: -43pt; } &#xD; &#xD;
            .x-note-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt;
            margin-left: 61pt; text-indent: -43pt; } &#xD; &#xD; .x-note-3-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; margin-left: 61pt; text-indent:
            -43pt; } &#xD; &#xD; .x-note-4-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 8pt; margin-left: 70pt; text-indent: -45pt; } &#xD; .x-note-4-1 {} &#xD;
            &#xD; .x-note-5-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top:
            8pt; margin-left: 63pt; text-indent: -43pt; } &#xD; .x-note-5-1 {margin-left: 76pt;
            text-indent: -57pt; } &#xD; &#xD; .x-note-6-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; } &#xD; &#xD; .x-note-7-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; } &#xD; &#xD; .x-note-8-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; } &#xD; &#xD; .x-note-9-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; } &#xD; &#xD; .x-note-10-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; } &#xD; &#xD; .x-note-11-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 8pt; margin-left: 61pt; text-indent: -43pt; } &#xD;
            .x-note-11-1 {} &#xD; &#xD; .x-note-12-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 8pt; margin-left: 43pt; text-indent: -43pt; } &#xD;
            .x-note-12-1 {margin-left: 55pt; text-indent: -55pt; } &#xD; &#xD;
            .x--ufe-npara-numbering-1-0 {margin-left: 0pt; margin-right: 0pt; text-decoration:
            no-underline ; text-indent: -0pt; } &#xD; &#xD; .x--ufe-npara-numbering-2-0
            {margin-left: 0pt; margin-right: 0pt; text-decoration: no-underline ; text-indent: -0pt;
            } &#xD; &#xD; .x--ufe-npara-numbering-3-0 {margin-left: 0pt; margin-right: 0pt; } &#xD;
            &#xD; .x-num-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; text-align:
            center; } &#xD; &#xD; .x--ufe-num-index-title-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-family: sans-serif; color: #0000FF; text-align: left;
            line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x--ufe-num-index-title-2-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-family: sans-serif; color: #0000FF; text-align: left;
            line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x--ufe-num-index-title-3-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-family: sans-serif; color: #0000FF; text-align: left;
            line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x--ufe-num-index-title-4-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-weight: bold; font-size: 14pt; } &#xD; &#xD; .x-num-list-1-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; } &#xD; &#xD;
            .x--ufe-nut-option-title-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-nut-option-title-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-nut-option-title-3-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-nut-option-title-4-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 8pt; font-weight: bold; font-size: 14pt; } &#xD; &#xD; .x-orig-date-1-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-size: 14pt; color: #666666;
            text-align: center; margin-bottom: 12pt; } &#xD; &#xD; .x-pageblock-front-1-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-pageblock-title-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-weight: bold; text-decoration: underline ; text-transform: uppercase; margin-left:
            0pt; text-indent: 0pt; text-align: center; } &#xD; &#xD; .x-pageblock-title-2-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-family: sans-serif; color:
            #0000FF; text-align: left; line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em;
            margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-pageblock-title-3-0 {margin-left:
            0pt; margin-right: 0pt; text-indent: 0pt; font-weight: bold; font-size: 14pt; } &#xD;
            &#xD; .x-para-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top:
            8pt; } &#xD; &#xD; .x-para-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 8pt; margin-left: 18pt; text-indent: -18pt; } &#xD; &#xD; .x-para-3-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; margin-left:
            18pt; text-indent: -18pt; } &#xD; &#xD; .x-para-4-0 {margin-left: 0pt; margin-right:
            0pt; text-indent: 0pt; margin-top: 8pt; margin-left: 23pt; text-indent: 0pt; } &#xD;
            &#xD; .x-para-5-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top:
            8pt; margin-left: 23pt; text-indent: -23pt; } &#xD; &#xD; .x-para-6-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; margin-left: 23pt; text-indent:
            -23pt; } &#xD; &#xD; .x-para-7-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 8pt; margin-left: 18pt; text-indent: 0pt; } &#xD; &#xD; .x-para-8-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; margin-left:
            22pt; text-indent: 0pt; } &#xD; &#xD; .x-para-9-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 8pt; margin-left: 18pt; text-indent: 0pt; margin-bottom:
            6pt; } &#xD; &#xD; .x-para-10-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 8pt; margin-left: 18pt; text-indent: -18pt; } &#xD; &#xD; .x-para-11-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-para-13-0 {margin-left: 0pt;
            margin-right: 0pt; margin-top: 8pt; } &#xD; &#xD; .x-para-14-0 {margin-left: 0pt;
            margin-right: 0pt; margin-top: 8pt; } &#xD; &#xD; .x-para-15-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-para-16-0 {margin-left: 0pt; margin-right: 0pt; }
            &#xD; &#xD; .x-para-17-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x-para-18-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-para-19-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-para-20-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-para-21-0 {margin-left: 0pt; margin-right: 0pt;
            margin-top: 8pt; } &#xD; &#xD; .x-para-22-0 {margin-left: 0pt; margin-right: 0pt; }
            &#xD; &#xD; .x-para-23-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x-para-24-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-para-25-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-para-26-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-para-27-0 {margin-left: 0pt; margin-right: 0pt; }
            &#xD; &#xD; .x-para-28-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x-para-29-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-para-31-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom:
            6pt; } &#xD; &#xD; .x-para-32-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 6pt; margin-bottom: 6pt; } &#xD; &#xD; .x-para-33-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; } &#xD; &#xD;
            .x-para-34-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt;
            margin-bottom: 6pt; } &#xD; &#xD; .x-para-35-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; } &#xD; &#xD; .x-para-36-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom:
            6pt; } &#xD; &#xD; .x-para-37-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 6pt; margin-bottom: 6pt; } &#xD; &#xD; .x-para-38-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; } &#xD; &#xD;
            .x-para-39-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt;
            margin-bottom: 6pt; } &#xD; &#xD; .x-para-40-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; } &#xD; &#xD; .x-para-41-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom:
            6pt; } &#xD; &#xD; .x-para-42-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 6pt; margin-bottom: 6pt; } &#xD; &#xD; .x-para-43-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; } &#xD; &#xD;
            .x-para-44-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt;
            margin-bottom: 6pt; } &#xD; &#xD; .x-para-46-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 8pt; text-align: center; } &#xD; &#xD; .x-para-47-0
            {margin-left: 0pt; margin-right: 0pt; margin-top: 8pt; } &#xD; &#xD; .x-para-49-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-para-50-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; margin-left: 18pt; text-indent:
            0pt; } &#xD; &#xD; .x-para-51-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 8pt; margin-left: 1.5em; text-indent: 0pt; margin-bottom: 6pt; } &#xD; &#xD;
            .x-para-52-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt;
            margin-left: 18pt; text-indent: 0pt; } &#xD; &#xD; .x-para-53-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; margin-left: 18pt; text-indent:
            0pt; } &#xD; &#xD; .x-part-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x-part-group-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top:
            6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-part-group-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top:
            6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-part-group-3-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top:
            6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-part-group-4-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top:
            6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-part-loc-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-partname-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-pcextract-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x--ufe-pdlist-title-1-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-family: sans-serif; color:
            #0000FF; text-align: left; line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em;
            margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x--ufe-pdlist-title-2-0 {margin-left:
            0pt; margin-right: 0pt; text-indent: 0pt; font-weight: bold; font-size: 14pt; } &#xD;
            &#xD; .x-pgblk-name-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-pnr-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-post-tr-1-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-postal-1-0 {margin-left: 0pt; margin-right: 0pt; }
            &#xD; &#xD; .x-pre-tr-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x-procedure-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top:
            8pt; margin-left: 18pt; text-indent: 0pt; } &#xD; &#xD; .x-process-1-0 {margin-left:
            0pt; margin-right: 0pt; } &#xD; &#xD; .x--ufe-proprietary-notice-1-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; font-weight: normal; font-size: 10pt; text-align:
            justify; margin-top: 24pt; } &#xD; &#xD; .x--ufe-proprietary-notice-2-0 {margin-left:
            0pt; margin-right: 0pt; text-indent: 0pt; font-weight: normal; font-size: 10pt;
            text-align: center; margin-top: 24pt; } &#xD; &#xD; .x--ufe-proprietary-warning-1-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; font-weight:
            normal; font-size: 10pt; text-decoration: underline ; text-align: center; } &#xD; &#xD;
            .x-province-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-q-and-st-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-qty-1-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; .x-qty-1-1 {} &#xD; &#xD; .x-qty-2-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-quantity-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; } &#xD; &#xD; .x-record-of-revisions-1-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-ref-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; } &#xD; &#xD; .x-ref-2-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; } &#xD; &#xD; .x-ref-nbr-1-0 {margin-left: 0pt; margin-right: 0pt; }
            &#xD; &#xD; .x-refext-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }
            &#xD; &#xD; .x-refext-2-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x-refint-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-refint-2-0 {margin-left: 0pt; margin-right: 0pt; color: #000000; text-decoration:
            no-underline ; } &#xD; &#xD; .x-refint-3-0 {margin-left: 0pt; margin-right: 0pt; } &#xD;
            &#xD; .x-refint-4-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-refint-5-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-refint-6-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; .x-refint-6-1 {} &#xD; &#xD; .x--ufe-refint-link-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-remarks-1-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-repl-1-0 {margin-left: 0pt; margin-right: 0pt; }
            &#xD; &#xD; .x-atidlm-resourcepair-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; } &#xD; &#xD; .x-rev-date-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-size: 18pt; text-align: center; } &#xD; &#xD; .x-rev-date-2-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-revdate-block-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-bottom: 24pt; } &#xD; &#xD; .x-row-1-0 {margin-left: 0pt; margin-right: 0pt; }
            &#xD; .x-row-1-1 {} &#xD; &#xD; .x-sb-item-1-0 {margin-left: 0pt; margin-right: 0pt; }
            &#xD; &#xD; .x-sblist-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 8pt; } &#xD; &#xD; .x--ufe-sblist-title-1-0 {margin-left: 0pt; margin-right:
            0pt; text-indent: 0pt; font-family: sans-serif; color: #0000FF; text-align: left;
            line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x--ufe-sblist-title-2-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-family: sans-serif; color: #0000FF; text-align: left;
            line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x--ufe-sblist-title-3-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-weight: bold; font-size: 14pt; } &#xD; &#xD; .x-section-1-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-sin-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-soa-1-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; text-align: center; } &#xD; &#xD;
            .x-soa-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; }
            &#xD; &#xD; .x-soa-3-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 8pt; } &#xD; &#xD; .x-atidlm-source-1-0 {margin-left: 0pt; margin-right:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x-source-item-1-0 {margin-left: 0pt; margin-right:
            0pt; } &#xD; &#xD; .x-spanspec-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x--ufe-spblist-title-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-spblist-title-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-spblist-title-3-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-weight: bold; font-size: 14pt; } &#xD; &#xD; .x-spec-assem-1-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-spec-tool-1-0 {margin-left: 0pt; margin-right: 0pt;
            } &#xD; &#xD; .x-spec-tool-head-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x-spec-tool-row-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x-spec-tool-table-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 8pt; } &#xD; &#xD; .x-special-tools-1-0 {margin-left: 0pt; margin-right:
            0pt; text-indent: 0pt; margin-top: 8pt; } &#xD; .x-special-tools-1-1 {} &#xD; &#xD;
            .x--ufe-spectools-title-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-spectools-title-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-spectools-title-3-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-spectools-title-4-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-weight: bold; margin-left: 1.5em; text-indent: -1.5em; } &#xD; &#xD;
            .x--ufe-spectools-title-5-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-weight: bold; margin-left: 1.5em; text-indent: -1.5em; } &#xD; &#xD;
            .x--ufe-spectools-title-6-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; }
            &#xD; &#xD; .x-spring-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x-spring-pressure-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-sqrt-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-state-1-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; .x-state-1-1 {} &#xD; &#xD; .x-step-1-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x-step-4-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x-step2-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-step3-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt;
            margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-step4-1-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom:
            6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-step5-1-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x-sub-1-0 {margin-left: 0pt; margin-right: 0pt;
            font-size: .69em; bottom: -.15em; position: relative; } &#xD; &#xD; .x-subject-1-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-subpara-1-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; margin-left:
            66pt; text-indent: 0pt; } &#xD; &#xD; .x-subpara-2-0 {margin-left: 0pt; margin-right:
            0pt; text-indent: 0pt; margin-top: 8pt; margin-left: 35pt; text-indent: 0pt; } &#xD;
            &#xD; .x-subpara-3-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top:
            8pt; margin-left: 48pt; text-indent: 0pt; } &#xD; &#xD; .x-subpara-4-0 {margin-left:
            0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; margin-left: 18pt;
            text-indent: 0pt; } &#xD; &#xD; .x-subpara-5-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 8pt; margin-left: 18pt; text-indent: 0pt; } &#xD; &#xD;
            .x-subpara-6-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt;
            margin-left: 36pt; text-indent: 0pt; } &#xD; &#xD; .x-subpara-7-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; margin-left: 36pt; text-indent:
            0pt; } &#xD; &#xD; .x-subpara-8-0 {margin-left: 0pt; margin-right: 0pt; text-indent:
            0pt; margin-top: 8pt; margin-left: 36pt; text-indent: 0pt; } &#xD; &#xD; .x-subpara-9-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; margin-left:
            18pt; text-indent: 0pt; } &#xD; &#xD; .x-subpara-10-0 {margin-left: 0pt; margin-right:
            0pt; text-indent: 0pt; margin-top: 8pt; margin-left: 18pt; text-indent: 0pt; } &#xD;
            &#xD; .x-subpara-11-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 8pt; margin-left: 18pt; text-indent: 0pt; } &#xD; &#xD; .x-subpara-12-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; margin-left:
            18pt; text-indent: 0pt; } &#xD; &#xD; .x-subpara-13-0 {margin-left: 0pt; margin-right:
            0pt; text-indent: 0pt; margin-top: 8pt; margin-left: 18pt; text-indent: 0pt; } &#xD;
            &#xD; .x-subpara-14-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 8pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-subpara-15-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; margin-left:
            18pt; text-indent: 0pt; } &#xD; &#xD; .x-subpara-16-0 {margin-left: 0pt; margin-right:
            0pt; text-indent: 0pt; margin-top: 8pt; margin-left: 18pt; text-indent: 0pt; } &#xD;
            &#xD; .x-sup-1-0 {margin-left: 0pt; margin-right: 0pt; font-size: .69em; top: -.33em;
            position: relative; } &#xD; &#xD; .x--ufe-supplier-list-title-1-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; font-family: sans-serif; color: #0000FF;
            text-align: left; line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x--ufe-supplier-list-title-2-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; font-family: sans-serif; color: #0000FF;
            text-align: left; line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x--ufe-supplier-list-title-3-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; font-family: sans-serif; color: #0000FF;
            text-align: left; line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; margin-left:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x--ufe-supplier-list-title-4-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; font-weight: bold; font-size: 14pt; } &#xD; &#xD;
            .x-table-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt;
            font-family: Arial; margin-left: 18pt; text-indent: 0pt; } &#xD; &#xD; .x-table-2-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; font-family:
            Arial; margin-left: 18pt; text-indent: 0pt; } &#xD; .x-table-2-1 {font-size: 10pt; }
            &#xD; &#xD; .x-table-4-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 8pt; font-family: Arial; } &#xD; &#xD; .x-table-7-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; font-family: Arial; font-size:
            10pt; margin-left: 18pt; text-indent: 0pt; } &#xD; &#xD; .x-table-9-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; font-family: Arial; font-weight:
            bold; margin-left: 18pt; text-indent: 0pt; } &#xD; &#xD; .x-table-13-0 {margin-left:
            0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; font-family: Arial;
            font-size: 9pt; } &#xD; &#xD; .x-atidlm-target-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; } &#xD; &#xD; .x--ufe-task-postspace-1-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-bottom: 4pt; } &#xD; &#xD;
            .x--ufe-task-title-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-task-title-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-task-title-3-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-left: 1.5em; text-indent: -1.5em; } &#xD; &#xD; .x--ufe-task-title-4-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-tbody-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-tel-1-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-tel-2-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-left: 27pt; text-indent: 0pt; } &#xD; &#xD;
            .x-tel-3-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-temp-rev-title-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-temp-rev-title-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-temp-rev-title-3-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-weight: bold; font-size: 14pt; } &#xD; &#xD; .x-term-1-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-term-2-0 {margin-left: 0pt; margin-right: 0pt; }
            &#xD; &#xD; .x-tfoot-1-0 {text-align: left; margin-left: 0pt; margin-right: 0pt; } &#xD;
            &#xD; .x-tgroup-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-thead-1-0
            {text-align: left; margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-title-1-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-left: 1.5em; text-indent:
            -1.5em; } &#xD; &#xD; .x-title-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent:
            0pt; margin-left: 1.5em; text-indent: -1.5em; } &#xD; &#xD; .x-title-3-0 {margin-left:
            0pt; margin-right: 0pt; text-indent: 0pt; margin-left: 1.5em; text-indent: -1.5em; }
            &#xD; &#xD; .x-title-4-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-weight: bold; font-size: 14pt; margin-left: 0pt; text-indent: -0pt; } &#xD; &#xD;
            .x-title-5-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-weight: bold;
            font-size: 14pt; margin-left: 0pt; text-indent: -0pt; } &#xD; &#xD; .x-title-6-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-weight: bold; font-size:
            14pt; margin-left: 3em; text-indent: -3em; } &#xD; .x-title-6-1 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-6-2 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-6-3 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-6-4 {margin-left:
            3em; text-indent: -3em; } &#xD; .x-title-6-5 {margin-left: 3em; text-indent: -3em; }
            &#xD; .x-title-6-6 {margin-left: 3em; text-indent: -3em; } &#xD; &#xD; .x-title-7-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-family: sans-serif; color:
            #0000FF; text-align: left; line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; }
            &#xD; .x-title-7-1 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-7-2
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-7-3 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-7-4 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-7-5 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-7-6 {margin-left:
            3em; text-indent: -3em; } &#xD; &#xD; .x-title-8-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-weight: bold; font-size: 14pt; } &#xD; &#xD; .x-title-11-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-left: 18pt; text-indent:
            -18pt; } &#xD; &#xD; .x-title-13-0 {margin-left: 0pt; margin-right: 0pt; text-indent:
            0pt; margin-left: 19pt; text-indent: -19pt; } &#xD; &#xD; .x-title-14-0 {margin-left:
            0pt; margin-right: 0pt; text-indent: 0pt; margin-left: 1.5em; text-indent: -1.5em; }
            &#xD; &#xD; .x-title-16-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-left: 1.5em; text-indent: -1.5em; } &#xD; &#xD; .x-title-17-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; font-weight: bold; font-size: 14pt; } &#xD; &#xD;
            .x-title-18-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-weight: bold;
            font-size: 14pt; text-transform: uppercase; } &#xD; &#xD; .x-title-19-0 {margin-left:
            0pt; margin-right: 0pt; text-indent: 0pt; font-weight: bold; font-size: 14pt; } &#xD;
            &#xD; .x-title-20-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-weight:
            bold; font-size: 14pt; } &#xD; &#xD; .x-title-21-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-weight: bold; font-size: 14pt; } &#xD; &#xD; .x-title-22-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-family: sans-serif; color:
            #0000FF; text-align: left; line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em;
            font-weight: bold; font-size: 14pt; margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-22-1 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-22-2 {margin-left:
            3em; text-indent: -3em; } &#xD; .x-title-22-3 {margin-left: 3em; text-indent: -3em; }
            &#xD; .x-title-22-4 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-22-5
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-22-6 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-22-7 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-22-8 {margin-left: 3em; text-indent: -3em; } &#xD; &#xD; .x-title-23-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-family: sans-serif; color:
            #0000FF; text-align: left; line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em;
            font-weight: bold; font-size: 14pt; margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-23-1 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-23-2 {margin-left:
            3em; text-indent: -3em; } &#xD; &#xD; .x-title-24-0 {margin-left: 0pt; margin-right:
            0pt; text-indent: 0pt; font-family: sans-serif; color: #0000FF; text-align: left;
            line-height: 1.1; margin-top: 1.5em; margin-bottom: 1em; font-weight: bold; font-size:
            14pt; margin-left: 3em; text-indent: -3em; } &#xD; .x-title-24-1 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-24-2 {margin-left: 3em; text-indent: -3em; } &#xD;
            &#xD; .x-title-27-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-weight:
            bold; margin-left: 1.5em; text-indent: -1.5em; } &#xD; &#xD; .x-title-28-0 {margin-left:
            0pt; margin-right: 0pt; text-indent: 0pt; font-weight: bold; margin-left: 1.5em;
            text-indent: -1.5em; } &#xD; &#xD; .x-title-31-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-weight: bold; font-size: 14pt; } &#xD; &#xD; .x-title-32-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-weight: bold; font-size:
            14pt; margin-left: 0pt; text-indent: -0pt; } &#xD; .x-title-32-1 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-32-2 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-32-3 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-32-4 {margin-left:
            3em; text-indent: -3em; } &#xD; .x-title-32-5 {margin-left: 3em; text-indent: -3em; }
            &#xD; .x-title-32-6 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-32-7
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-32-8 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-32-9 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-32-10 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-32-11
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-32-12 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-32-13 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-32-14 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-32-15
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-32-16 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-32-17 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-32-18 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-32-19
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-32-20 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-32-21 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-32-22 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-32-23
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-32-24 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-32-25 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-32-26 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-32-27
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-32-28 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-32-29 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-32-30 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-32-31
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-32-32 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-32-33 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-32-34 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-32-35
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-32-36 {margin-left: 3em;
            text-indent: -3em; } &#xD; &#xD; .x-title-33-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; } &#xD; .x-title-33-1 {} &#xD; &#xD; .x-title-34-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; font-weight: bold; font-size: 14pt; text-transform:
            uppercase; } &#xD; &#xD; .x-title-35-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-left: 1.5em; text-indent: -1.5em; } &#xD; &#xD; .x-title-36-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-left: 1.5em; text-indent:
            -1.5em; } &#xD; .x-title-36-1 {} &#xD; &#xD; .x-title-37-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; font-weight: bold; font-size: 14pt; } &#xD; &#xD;
            .x-title-38-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-weight: bold;
            font-size: 14pt; text-transform: uppercase; margin-left: 0pt; text-indent: 0pt; } &#xD;
            &#xD; .x-title-39-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-left:
            18pt; text-indent: -18pt; } &#xD; &#xD; .x-title-41-0 {margin-left: 0pt; margin-right:
            0pt; text-indent: 0pt; font-weight: bold; font-size: 14pt; text-transform: uppercase; }
            &#xD; &#xD; .x-title-42-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-weight: bold; font-size: 14pt; } &#xD; &#xD; .x-title-43-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; font-size: 12pt; text-decoration: underline ;
            margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-title-44-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-title-45-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-title-46-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-left: 18pt;
            text-indent: -18pt; } &#xD; &#xD; .x-title-47-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-left: 1.5em; text-indent: -1.5em; } &#xD; &#xD; .x-title-48-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-weight: bold; font-size:
            12pt; margin-left: 1em; text-indent: -1em; } &#xD; &#xD; .x-title-50-0 {margin-left:
            0pt; margin-right: 0pt; text-indent: 0pt; font-weight: bold; font-size: 14pt;
            margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-title-51-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; font-weight: bold; font-size: 14pt; margin-left:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x-title-52-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-weight: bold; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-title-53-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-weight: bold;
            margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-title-54-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; font-weight: bold; font-size: 12pt; margin-left:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x-title-55-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-weight: bold; font-size: 12pt; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x-title-56-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-left: 1.5em; text-indent: -1.5em; } &#xD; &#xD; .x-title-57-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-title-58-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-left: 18pt; text-indent: 0pt; } &#xD; &#xD;
            .x-title-59-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-weight: bold;
            font-size: 14pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-title-60-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-weight: bold; font-size:
            12pt; text-decoration: underline ; margin-left: 0pt; text-indent: -0pt; } &#xD; &#xD;
            .x-title-61-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-weight: bold;
            font-size: 12pt; text-decoration: underline ; margin-left: 0pt; text-indent: -0pt; }
            &#xD; &#xD; .x-title-62-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-title-63-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; font-weight: bold; font-size: 14pt; margin-left:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x-title-64-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-weight: bold; font-size: 14pt; margin-left: 0pt; text-indent:
            -0pt; } &#xD; &#xD; .x-title-65-0 {margin-left: 0pt; margin-right: 0pt; text-indent:
            0pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-title-66-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; font-weight: bold; font-size: 14pt; margin-left:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x-title-67-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-weight: bold; font-size: 14pt; margin-left: 0pt; text-indent:
            -0pt; } &#xD; .x-title-67-1 {} &#xD; .x-title-67-2 {margin-left: 3em; text-indent: -3em;
            } &#xD; .x-title-67-3 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-67-4
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-67-5 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-67-6 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-67-7 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-67-8 {margin-left:
            3em; text-indent: -3em; } &#xD; .x-title-67-9 {margin-left: 3em; text-indent: -3em; }
            &#xD; .x-title-67-10 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-67-11
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-67-12 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-67-13 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-67-14 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-67-15
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-67-16 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-67-17 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-67-18 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-67-19
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-67-20 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-67-21 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-67-22 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-67-23
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-67-24 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-67-25 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-67-26 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-67-27
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-67-28 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-67-29 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-67-30 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-67-31
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-67-32 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-67-33 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-67-34 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-67-35
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-67-36 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-67-37 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-67-38 {font-size: 10pt; margin-left: 1.5em; text-indent: -1.5em; } &#xD;
            .x-title-67-39 {font-size: 10pt; margin-left: 1.5em; text-indent: -1.5em; } &#xD; &#xD;
            .x-title-68-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-weight: bold;
            font-size: 14pt; margin-left: 0pt; text-indent: -0pt; } &#xD; .x-title-68-1 {} &#xD;
            .x-title-68-2 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-68-3 {margin-left:
            3em; text-indent: -3em; } &#xD; .x-title-68-4 {margin-left: 3em; text-indent: -3em; }
            &#xD; .x-title-68-5 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-68-6
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-68-7 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-68-8 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-68-9 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-68-10 {margin-left:
            3em; text-indent: -3em; } &#xD; .x-title-68-11 {margin-left: 3em; text-indent: -3em; }
            &#xD; .x-title-68-12 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-68-13
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-68-14 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-68-15 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-68-16 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-68-17
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-68-18 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-68-19 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-68-20 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-68-21
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-68-22 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-68-23 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-68-24 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-68-25
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-68-26 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-68-27 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-68-28 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-68-29
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-68-30 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-68-31 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-68-32 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-68-33
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-68-34 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-68-35 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-68-36 {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-68-37
            {margin-left: 3em; text-indent: -3em; } &#xD; .x-title-68-38 {margin-left: 3em;
            text-indent: -3em; } &#xD; .x-title-68-39 {margin-left: 3em; text-indent: -3em; } &#xD;
            .x-title-68-40 {font-size: 10pt; margin-left: 1.5em; text-indent: -1.5em; } &#xD;
            .x-title-68-41 {font-size: 10pt; margin-left: 1.5em; text-indent: -1.5em; } &#xD; &#xD;
            .x-title-69-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-weight: bold;
            font-size: 12pt; text-decoration: underline ; margin-left: 0pt; text-indent: -0pt; }
            &#xD; &#xD; .x-title-70-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-weight: bold; font-size: 24pt; } &#xD; &#xD; .x-title-71-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-left: 0pt; text-indent: -0pt; } &#xD; &#xD;
            .x-title-72-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-weight: bold;
            font-size: 14pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-title-73-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; font-weight: bold; } &#xD;
            .x-title-73-1 {font-weight: normal; text-decoration: underline ; } &#xD; &#xD;
            .x--ufe-title-block-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-weight: normal; font-size: 16pt; margin-top: 12pt; margin-bottom: 12pt; } &#xD;
            &#xD; .x--ufe-tmm-title-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-tmm-title-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-family: sans-serif; color: #0000FF; text-align: left; line-height: 1.1; margin-top:
            1.5em; margin-bottom: 1em; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x--ufe-tmm-title-3-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            font-weight: bold; font-size: 36pt; text-align: center; margin-bottom: 12pt; } &#xD;
            .x--ufe-tmm-title-3-1 {} &#xD; &#xD; .x-toc-1-0 {margin-left: 0pt; margin-right: 0pt; }
            &#xD; &#xD; .x-tool-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x-tool-list-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-toolname-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-toolnbr-1-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-torque-and-stretch-1-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; font-size: 9pt; } &#xD; &#xD;
            .x-tr-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-trbody-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-trdata-1-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-trfignum-1-0 {margin-left: 0pt; margin-right: 0pt; }
            &#xD; &#xD; .x-trfmatr-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x-trlist-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-trloc-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-trnbr-1-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-trreason-1-0 {margin-left: 0pt; margin-right: 0pt; }
            &#xD; &#xD; .x-trstatus-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x-trsupdata-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-trtblnum-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-trxref-1-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-type-1-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; font-size: 18pt; text-align: center; margin-bottom: 12pt; } &#xD;
            &#xD; .x-type-2-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-unlist-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt;
            margin-left: 22pt; text-indent: 0pt; } &#xD; &#xD; .x-unlist-2-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; font-size: 9pt; margin-left: 38pt;
            text-indent: 0pt; } &#xD; &#xD; .x-unlist-3-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 8pt; font-size: 9pt; } &#xD; &#xD; .x-unlist-4-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; font-size: 9pt;
            } &#xD; &#xD; .x-unlist-5-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt;
            margin-top: 8pt; font-size: 9pt; } &#xD; &#xD; .x-unlist-6-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; font-size: 9pt; } &#xD; &#xD;
            .x-unlist-7-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt;
            font-size: 9pt; margin-left: 36pt; text-indent: 0pt; } &#xD; &#xD; .x-unlist-8-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; font-size: 9pt;
            margin-left: 18pt; text-indent: 0pt; } &#xD; &#xD; .x-unlitem-1-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x-unlitem-2-0 {margin-left: 0pt; margin-right:
            0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt;
            text-indent: 0pt; } &#xD; &#xD; .x-unlitem-3-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent:
            0pt; } &#xD; &#xD; .x-unlitem-4-0 {margin-left: 0pt; margin-right: 0pt; text-indent:
            0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD;
            &#xD; .x-unlitem-5-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top:
            6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-unlitem-6-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt;
            margin-bottom: 6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-unlitem-7-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom:
            6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-unlitem-8-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x-unlitem-9-0 {margin-left: 0pt; margin-right:
            0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt;
            text-indent: 0pt; } &#xD; &#xD; .x-unlitem-10-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left: 0pt; text-indent:
            0pt; } &#xD; .x-unlitem-10-1 {margin-left: 0pt; text-indent: 0pt; } &#xD;
            .x-unlitem-10-2 {margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-unlitem-11-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom:
            6pt; margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-unlitem-12-0 {margin-left:
            0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt;
            margin-left: 0pt; text-indent: 0pt; } &#xD; &#xD; .x-unlitem-13-0 {margin-left: 0pt;
            margin-right: 0pt; text-indent: 0pt; margin-top: 6pt; margin-bottom: 6pt; margin-left:
            0pt; text-indent: 0pt; } &#xD; &#xD; .x-url-1-0 {margin-left: 0pt; margin-right: 0pt;
            margin-top: 8pt; } &#xD; &#xD; .x--ufe-url-link-1-0 {margin-left: 0pt; margin-right:
            0pt; } &#xD; &#xD; .x-validation-1-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD;
            .x-warning-1-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt;
            font-weight: bold; margin-left: 6.5em; text-indent: -6.5em; } &#xD; &#xD; .x-warning-2-0
            {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt; margin-left:
            83pt; text-indent: -66pt; } &#xD; &#xD; .x-warning-3-0 {margin-left: 0pt; margin-right:
            0pt; text-indent: 0pt; margin-top: 8pt; font-weight: bold; margin-left: 89pt;
            text-indent: -65pt; } &#xD; &#xD; .x-warning-4-0 {margin-left: 0pt; margin-right: 0pt;
            text-indent: 0pt; margin-top: 8pt; font-weight: bold; margin-left: 86pt; text-indent:
            -67pt; } &#xD; &#xD; .x-warning-5-0 {margin-left: 0pt; margin-right: 0pt; text-indent:
            0pt; margin-top: 8pt; margin-left: 83pt; text-indent: -66pt; } &#xD; &#xD;
            .x-warning-6-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-warning-7-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-warning-8-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-warning-9-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-warning-10-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; } &#xD; &#xD;
            .x-warning-11-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt;
            font-weight: bold; margin-left: 8.5em; text-indent: -6.5em; } &#xD; &#xD;
            .x-warning-12-0 {margin-left: 0pt; margin-right: 0pt; text-indent: 0pt; margin-top: 8pt;
            font-weight: bold; margin-left: 6.5em; text-indent: -6.5em; } &#xD; &#xD; .x-xref-1-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-xref-4-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-xref-5-0 {margin-left: 0pt; margin-right: 0pt; }
            &#xD; &#xD; .x-xref-6-0 {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-xref-8-0
            {margin-left: 0pt; margin-right: 0pt; } &#xD; &#xD; .x-zip-1-0 {margin-left: 0pt;
            margin-right: 0pt; } &#xD; .x-zip-1-1 {} &#xD; &#xD; <xsl:call-template
               name="__style-for_ata-page-block.1"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_changebar.1"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_figure.2firere271"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_frac.2eqraac81"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_graphic.1"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_highlights.1"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_item.31liitem3315"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_item.31buisem3616"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_key.2fireey101"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_lot.1"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_nowrap.1"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_num-index.1"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_page-block.7bopack661"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_page-block.11bopack662"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_page-block.11bopack6623"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_page-block.10bopack652"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_page-block.9bopack662"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_page-block.7frtmck452"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_page-block.10bopack925"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_page-block.6pa-bck322"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_page-block.6pa-bck313"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_page-block.9pa-bck287"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_page-block.4pa-bck333"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_page-block.2pa-bck102"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_para.46pablra296"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_para.38n-rara5420"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_para.47taprra1340"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_para.39tprera1235"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_postsb.1"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_presb.1"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_revend.1"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_revst.1"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_sb.1"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_step.4predep152"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_step.4step283"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_step2.3st2p2292"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_step2.3st2p253"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_step3.3st3p3292"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_step3.3st3p353"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_step4.3st4p4292"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_step4.3st4p453"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_step5.3st5p5292"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_step5.3st5p553"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_table.8shtgle171"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_table.10firele124"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_table.14mftrle206"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_table.7taele442"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_table.12taele409"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_table.13taele19312"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_table.11taele238"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_table.6taele56"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_title.64pa-ble443"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_title.64pa-ble454"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_title.66prtele226"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_title.64prtele229"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_title.64pa-ble2517"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_title.64atpale2918"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_title.64atpale2821"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_title.64pa-ble2422"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_title.64nuptle1232"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_title.70tatile1046"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_title-page.1"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_xref.7loitef382"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_xref.4loitef371"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/>
            <xsl:call-template name="__style-for_xref.7xref276"/>
            <xsl:value-of select="'&#xA;&#xD;&#xA;&#xD;&#xA;'"/> &#xD; table {border-color: #000000;
            font-size: 100%; border-collapse: collapse; } &#xD; td, th, { border-color: #000000; }
            &#xD; table[rules][rules="none"] &gt; tr &gt; td, table[rules][rules="none"] &gt; * &gt;
            tr &gt; td, table[rules][rules="none"] &gt; tr &gt; th, table[rules][rules="none"] &gt;
            * &gt; tr &gt; th, table[rules][rules="none"] &gt; td, table[rules][rules="none"] &gt;
            th { border-width: thin; border-style: none; } &#xD;
            table[frame="box"][border]:not([border="0"]),
            table[frame="border"][border]:not([border="0"]),
            table:not([frame])[border]:not([border="0"]) { border-style: solid; } &#xD; table
            table[class~="x-address-1-0"] {width: 100%; } &#xD; table table[class~="x-address-2-0"]
            {width: 100%; } &#xD; table table[class~="x-address-3-0"] {width: 100%; } &#xD; table
            table[class~="x-address-4-0"] {width: 100%; } &#xD; table table[class~="x-address-5-0"]
            {width: 100%; } &#xD; table table[class~="x-address-6-0"] {width: 100%; } &#xD; table
            table[class~="x-address-7-0"] {width: 100%; } &#xD; table table[class~="x-address-8-0"]
            {width: 100%; } &#xD; table table[class~="x-item-1-0"] {width: 100%; } &#xD; table
            table[class~="x-item-2-0"] {width: 100%; } &#xD; table table[class~="x-item-3-0"]
            {width: 100%; } &#xD; table table[class~="x-item-4-0"] {width: 100%; } &#xD; table
            table[class~="x-item-5-0"] {width: 100%; } &#xD; table table[class~="x-item-6-0"]
            {width: 100%; } &#xD; table table[class~="x-item-7-0"] {width: 100%; } &#xD; table
            table[class~="x-item-8-0"] {width: 100%; } &#xD; table table[class~="x-item-9-0"]
            {width: 100%; } &#xD; table table[class~="x-item-10-0"] {width: 100%; } &#xD; table
            table[class~="x-item-11-0"] {width: 100%; } &#xD; table table[class~="x-item-12-0"]
            {width: 100%; } &#xD; table table[class~="x-item-13-0"] {width: 100%; } &#xD; table
            table[class~="x-item-14-0"] {width: 100%; } &#xD; table table[class~="x-item-15-0"]
            {width: 100%; } &#xD; table table[class~="x-item-16-0"] {width: 100%; } &#xD; table
            table[class~="x-item-17-0"] {width: 100%; } &#xD; table table[class~="x-item-18-0"]
            {width: 100%; } &#xD; table table[class~="x-item-19-0"] {width: 100%; } &#xD; table
            table[class~="x-item-20-0"] {width: 100%; } &#xD; table table[class~="x-item-21-0"]
            {width: 100%; } &#xD; table table[class~="x-item-22-0"] {width: 100%; } &#xD; table
            table[class~="x-item-23-0"] {width: 100%; } &#xD; table table[class~="x-item-24-0"]
            {width: 100%; } &#xD; table table[class~="x-item-25-0"] {width: 100%; } &#xD; table
            table[class~="x-item-26-0"] {width: 100%; } &#xD; table table[class~="x-item-27-0"]
            {width: 100%; } &#xD; table table[class~="x-item-28-0"] {width: 100%; } &#xD; table
            table[class~="x-item-29-0"] {width: 100%; } &#xD; table table[class~="x-item-30-0"]
            {width: 100%; } &#xD; table table[class~="x-item-31-0"] {width: 100%; } &#xD; table
            table[class~="x-part-group-1-0"] {width: 100%; } &#xD; table
            table[class~="x-part-group-2-0"] {width: 100%; } &#xD; table
            table[class~="x-part-group-3-0"] {width: 100%; } &#xD; table
            table[class~="x-part-group-4-0"] {width: 100%; } &#xD; table table[class~="x-step-1-0"]
            {width: 100%; } &#xD; table table[class~="x-step-2-0"] {width: 100%; } &#xD; table
            table[class~="x-step-3-0"] {width: 100%; } &#xD; table table[class~="x-step-4-0"]
            {width: 100%; } &#xD; table table[class~="x-step2-1-0"] {width: 100%; } &#xD; table
            table[class~="x-step2-2-0"] {width: 100%; } &#xD; table table[class~="x-step2-3-0"]
            {width: 100%; } &#xD; table table[class~="x-step3-1-0"] {width: 100%; } &#xD; table
            table[class~="x-step3-2-0"] {width: 100%; } &#xD; table table[class~="x-step3-3-0"]
            {width: 100%; } &#xD; table table[class~="x-step4-1-0"] {width: 100%; } &#xD; table
            table[class~="x-step4-2-0"] {width: 100%; } &#xD; table table[class~="x-step4-3-0"]
            {width: 100%; } &#xD; table table[class~="x-step5-1-0"] {width: 100%; } &#xD; table
            table[class~="x-step5-2-0"] {width: 100%; } &#xD; table table[class~="x-step5-3-0"]
            {width: 100%; } &#xD; table table[class~="x-unlitem-1-0"] {width: 100%; } &#xD; table
            table[class~="x-unlitem-2-0"] {width: 100%; } &#xD; table table[class~="x-unlitem-3-0"]
            {width: 100%; } &#xD; table table[class~="x-unlitem-4-0"] {width: 100%; } &#xD; table
            table[class~="x-unlitem-5-0"] {width: 100%; } &#xD; table table[class~="x-unlitem-6-0"]
            {width: 100%; } &#xD; table table[class~="x-unlitem-7-0"] {width: 100%; } &#xD; table
            table[class~="x-unlitem-8-0"] {width: 100%; } &#xD; table table[class~="x-unlitem-9-0"]
            {width: 100%; } &#xD; table table[class~="x-unlitem-10-0"] {width: 100%; } &#xD; table
            table[class~="x-unlitem-11-0"] {width: 100%; } &#xD; table
            table[class~="x-unlitem-12-0"] {width: 100%; } &#xD; table
            table[class~="x-unlitem-13-0"] {width: 100%; } &#xD; .entry-in-tbody {margin-left: 0pt;
            margin-right: 0pt; } &#xD; &#xD; .x-Table-of-Contents-toc-entry-indent-1
            {text-decoration: none; margin-left: 0em} &#xD; .x-Table-of-Contents-toc-entry-indent-2
            {text-decoration: none; margin-left: 0em} &#xD; .x-Table-of-Contents-toc-entry-indent-3
            {text-decoration: none; margin-left: 0em} &#xD; .x-Table-of-Contents-toc-entry-indent-4
            {text-decoration: none; margin-left: 0em} &#xD; .x-Table-of-Contents-toc-entry-indent-5
            {text-decoration: none; margin-left: 8em} &#xD; .x-Table-of-Contents-toc-entry-indent-6
            {text-decoration: none; margin-left: 10em} &#xD; .x-Table-of-Contents-toc-entry-indent-7
            {text-decoration: none; margin-left: 12em} &#xD; .x-Table-of-Contents-toc-entry-indent-8
            {text-decoration: none; margin-left: 14em} &#xD; .x-Table-of-Contents-toc-entry-indent-9
            {text-decoration: none; margin-left: 16em} &#xD;
            .x-Table-of-Contents-toc-entry-indent-10 {text-decoration: none; margin-left: 18em}
            &#xD; .x--zero-left-margins {margin-left: 0pt; text-indent: 0pt; } &#xD;
            .x--zero-text-indent {text-indent: 0pt; } &#xD; .x--zero-top-bot-margins {margin-top:
            0pt; margin-bottom: 0pt; }</xsl:result-document>
      </xsl:if>
   </xsl:template>

   <xsl:template match="*" mode="styler-LabelAndNumberMarker"/>

   <xsl:template match="*" mode="startat-xpath">
      <!-- This will evaluate to NaN which will cause no numbering offset -->
      <xsl:value-of select="number('no-startAtXPath')"/>
   </xsl:template>

   <xsl:template match="*" mode="styler_numbering">
      <xsl:param name="do-qmark" select="'yes'"/>
      <xsl:if test="$do-qmark='yes'">
         <xsl:value-of select="'?'"/>
      </xsl:if>
   </xsl:template>

   <!-- This is an "atitag" (aka formatting PI), pass it through -->
   <xsl:template match="*[starts-with(local-name(.),'_')]" priority="-0.9">
      <xsl:element name="{name(.)}">
         <xsl:copy-of select="@*"/>
         <xsl:apply-templates/>
      </xsl:element>
   </xsl:template>

   <xsl:template xmlns:atievent="http://www.arbortext.com/namespace/AtiSaxEvents" match="atievent:*">
      <xsl:element name="{name(.)}">
         <xsl:copy-of select="@*"/>
         <xsl:apply-templates/>
      </xsl:element>
   </xsl:template>

   <xsl:template match="*" priority="-1">
      <xsl:call-template name="emit-unstyled-template-content"/>
   </xsl:template>

   <!-- Include code to handle CALS tables -->
   <xsl:param name="table.border.thickness" select="'1pt'"/>
   <xsl:param name="table.cell.padding.amount" select="'5pt'"/>
   <xsl:param name="thead.tfoot.style">font-weight: bold; </xsl:param>
   <xsl:template name="tgroup.first">
      <!--Emit class values to reflect conditions-->
      <xsl:attribute name="class">
         <xsl:text> x-tgroup-1-0</xsl:text>
      </xsl:attribute>
   </xsl:template>
   <xsl:template name="tgroup.notfirst">
      <!--Emit class values to reflect conditions-->
      <xsl:attribute name="class">
         <xsl:text> x-tgroup-1-0</xsl:text>
      </xsl:attribute>
   </xsl:template>
   <xsl:template name="row">
      <!--Emit class values to reflect conditions-->
      <xsl:attribute name="class">
         <xsl:text> x-row-1-0</xsl:text>
         <xsl:if test="(@role and string(@role)='changebar') or (entry[1]/marker)"> x-row-1-1</xsl:if>
      </xsl:attribute>
   </xsl:template>
   <xsl:template name="entry">
      <xsl:param name="context" select="'tbody'"/>
      <xsl:attribute name="class">entry-in-tbody</xsl:attribute>
   </xsl:template>
   <xsl:template name="thead">
      <!--Emit class values to reflect conditions-->
      <xsl:attribute name="class">
         <xsl:text> x-thead-1-0</xsl:text>
      </xsl:attribute>
   </xsl:template>
   <xsl:template name="tfoot">
      <!--Emit class values to reflect conditions-->
      <xsl:attribute name="class">
         <xsl:text> x-tfoot-1-0</xsl:text>
      </xsl:attribute>
   </xsl:template>
   <xsl:template name="tbody">
      <!--Emit class values to reflect conditions-->
      <xsl:attribute name="class">
         <xsl:text> x-tbody-1-0</xsl:text>
      </xsl:attribute>
   </xsl:template>
   <!--<xsl:include href="../ext/tbls.xsl"/>-->

   <!-- Include code to handle HTML tables (which includes ATI PI handling)-->
   <xsl:template name="htmltbl-tr">
      <!--Emit class values to reflect conditions-->
      <xsl:attribute name="class">
         <xsl:text> x-tr-1-0</xsl:text>
      </xsl:attribute>
   </xsl:template>
   <xsl:template name="htmltbl-td"/>
   <xsl:template name="htmltbl-th"/>
   <xsl:template name="htmltbl-caption"/>
   <!--<xsl:include href="../ext/html-tbls.xsl"/>-->
</xsl:stylesheet>
