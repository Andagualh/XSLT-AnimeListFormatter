<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="myinfo">
<div style='text-align:center'><u><b> Datos de usuario </b></u></div>
<br></br>
<fieldset>
<p>Nombre de usuario: <xsl:value-of select="user_name"/></p>
<p>Animes totales: <xsl:value-of select="user_total_anime"/></p>
<p>Animes viendo: <xsl:value-of select="user_total_watching"/></p>
<p>Animes vistos: <xsl:value-of select="user_total_completed"/></p>
<p>Animes en espera: <xsl:value-of select="user_total_onhold"/></p>
<p>Animes dejados: <xsl:value-of select="user_total_dropped"/></p>
<p>Animes pendientes: <xsl:value-of select="user_total_plantowatch"/></p>
</fieldset>
<br></br>
<br></br>
<div style='text-align:center'><u><b> Lista de animes </b></u></div>
<br></br>
  </xsl:template>

 <xsl:template match="anime">
<fieldset>
<xsl:choose>
<xsl:when test="my_score=10">
<b><p style="color:#28FF00"><xsl:value-of select="series_title"/></p></b>
</xsl:when>
<xsl:when test="my_score=9">
<b><p style="color:#5EFF00"><xsl:value-of select="series_title"/></p></b>
</xsl:when>
<xsl:when test="my_score=8">
<b><p style="color:#9BFF00"><xsl:value-of select="series_title"/></p></b>
</xsl:when>
<xsl:when test="my_score=7">
<b><p style="color:#E1FF00"><xsl:value-of select="series_title"/></p></b>
</xsl:when>
<xsl:when test="my_score=6">
<b><p style="color:#FFFE00"><xsl:value-of select="series_title"/></p></b>
</xsl:when>
<xsl:when test="my_score=5">
<b><p style="color:#FFCC00"><xsl:value-of select="series_title"/></p></b>
</xsl:when>
<xsl:when test="my_score=4">
<b><p style="color:#FFA200"><xsl:value-of select="series_title"/></p></b>
</xsl:when>
<xsl:when test="my_score=3">
<b><p style="color:#FF6400"><xsl:value-of select="series_title"/></p></b>
</xsl:when>
<xsl:when test="my_score=2">
<b><p style="color:#FF4200"><xsl:value-of select="series_title"/></p></b>
</xsl:when>
<xsl:when test="my_score=1">
<b><p style="color:#FF1700"><xsl:value-of select="series_title"/></p></b>
</xsl:when>
<xsl:when test="my_score=0">
<b><p style="color:#9E0000"><xsl:value-of select="series_title"/></p></b>
</xsl:when>
<xsl:otherwise>
            <b><p><div style='text-align:center'><xsl:value-of select="series_title"/></div></p></b>
        </xsl:otherwise>
  </xsl:choose>  
<p>Formato: <xsl:value-of select="series_type"/></p>
<p>Episodios totales: <xsl:value-of select="series_episodes"/></p>
<p>Episodios vistos: <xsl:value-of select="my_watched_episodes"/></p>
<p>Mi puntuación: <xsl:value-of select="my_score"/></p>
<p>Estado: <xsl:value-of select="my_status"/></p>
<p>Comentarios: <xsl:value-of select="my_comments"/></p>
</fieldset>
  </xsl:template>

</xsl:stylesheet>
