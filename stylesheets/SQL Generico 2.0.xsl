<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema">
<xsl:output method="text" encoding="UTF-8" indent="yes" />

<xsl:template match="myanimelist/node()">
	<xsl:if test="node() != ' ' ">
	CREATE TABLE myinfo(
	<xsl:for-each select="myinfo">
	<xsl:choose>
	<xsl:when test="node() castable as xs:integer">
	<xsl:value-of select="name()"/> int
	</xsl:when>
	<xsl:otherwise>
	<xsl:value-of select="name()"/> varchar(255)
	</xsl:otherwise> 
	</xsl:choose>
	<xsl:if test='position() != last()'>
	,
	</xsl:if>
	</xsl:for-each>
	);
	</xsl:if>
</xsl:template>


<xsl:template match="myanimelist/node()">
	<xsl:if test="node() != ' ' ">
INSERT INTO <xsl:value-of select="name()"/>(<xsl:for-each select="*">
					<xsl:if test="node()/name() != ' '"> 
					<xsl:value-of select="name()"/>
					<xsl:if test='position() != last()'>,</xsl:if>
					</xsl:if>
				</xsl:for-each>	
	) VALUES (
				<xsl:for-each select="*">
				<xsl:if test="node()/name() != ' '">
					<xsl:choose>
					<xsl:when test="node() castable as xs:integer">
					<xsl:value-of select="node()"/>
					</xsl:when>
					<xsl:otherwise>
					'<xsl:value-of select="node()"/>'
					</xsl:otherwise>
					</xsl:choose>
					<xsl:if test='position() != last()'>,
					</xsl:if>
				</xsl:if>
				</xsl:for-each>
	);

	</xsl:if>

</xsl:template>
</xsl:stylesheet>