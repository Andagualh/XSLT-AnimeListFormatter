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
<div style='text-align:center'><u><b> Animes sin terminar </b></u></div>
<br></br>
  </xsl:template>

 <xsl:template match="anime">
<xsl:if test="my_status!='Completed'">
<fieldset>
Aún no has terminado  <b><xsl:value-of select="series_title"/></b>, has visto <b><xsl:value-of select="my_watched_episodes"/></b> de sus <b><xsl:value-of select="series_episodes"/></b> episodios.
</fieldset>
</xsl:if>
  </xsl:template>

</xsl:stylesheet>