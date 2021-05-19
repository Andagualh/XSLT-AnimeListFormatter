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
<b><p><div style='text-align:center'><xsl:value-of select="series_title"/></div></p></b>
<p>Formato: <xsl:value-of select="series_type"/></p>
<p>Episodios totales: <xsl:value-of select="series_episodes"/></p>
<p>Episodios vistos: <xsl:value-of select="my_watched_episodes"/></p>
<p>Mi puntuación: <xsl:value-of select="my_score"/></p>
<p>Estado: <xsl:value-of select="my_status"/></p>
<p>Comentarios: <xsl:value-of select="my_comments"/></p>
</fieldset>
  </xsl:template>

</xsl:stylesheet>