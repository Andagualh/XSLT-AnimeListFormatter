<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="myanimelist/node()">
	<xsl:if test="node() != ' ' ">

	INSERT INTO <xsl:value-of select="name()"/>(
			
				<xsl:for-each select="*">
					<xsl:if test="node()/name() != ' '"> 
					<xsl:value-of select="name()"/>,
					</xsl:if>
				</xsl:for-each>	
	) VALUES (
				<xsl:for-each select="*">
				<xsl:if test="node()/name() != ' '">
					<xsl:value-of select="node()"/>,
				</xsl:if>
				</xsl:for-each>
	);

	</xsl:if>

</xsl:template>


</xsl:stylesheet>