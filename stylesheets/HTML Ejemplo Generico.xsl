<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="myanimelist/node()">
<xsl:if test="node() != ' ' ">
<fieldset>
<p> Tabla: <xsl:value-of select="name()"/></p>
<xsl:for-each select="*">


<p><xsl:value-of select="name()"/>: <xsl:value-of select="node()"/></p>

</xsl:for-each>
</fieldset>
</xsl:if>

  </xsl:template>

</xsl:stylesheet>