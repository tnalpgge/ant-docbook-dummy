<xsl:stylesheet version="1.0" 
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xs="http://www.w3.org/2001/XMLSchema">

  <xsl:template match="xs:schema">
    <xsl:element name="antlib">
<!--
      <xsl:comment>
	XSLT Version =	<xsl:copy-of select="system-property('xsl:version')"/>
	XSLT Vendor = <xsl:copy-of select="system-property('xsl:vendor')"/>
	XSLT Vendor URL = <xsl:copy-of select="system-property('xsl:vendor-url')"/>
      </xsl:comment>
-->
      <xsl:apply-templates select="xs:element"/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="xs:element">
    <xsl:element name="taskdef">
      <xsl:attribute name="name">
	<xsl:value-of select="@name"/>
      </xsl:attribute>
      <xsl:attribute name="classname">
	<xsl:text>com.navelint.ant.docbook.Element</xsl:text>
      </xsl:attribute>
    </xsl:element>
  </xsl:template>

</xsl:stylesheet>