<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:md="urn:oasis:names:tc:SAML:2.0:metadata"
>

  <xsl:template match="@ID"/>
  <xsl:template match="@validUntil"/>
  <xsl:template match="@cacheDuration"/>
  <xsl:template match="@xml:base"/>
  <xsl:template match="md:OrganizationName|md:OrganizationURL|md:OrganizationDisplayName">
     <xsl:if test="normalize-space(text()) != ''">
        <xsl:copy><xsl:apply-templates select="node()|@*"/></xsl:copy>
     </xsl:if>
  </xsl:template>

  <xsl:template match="text()|comment()|@*">
    <xsl:copy/>
  </xsl:template>
  
  <xsl:template match="*">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>
