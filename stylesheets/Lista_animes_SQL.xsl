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
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="myinfo">
CREATE TABLE user (
userId int,
username varchar(255),
totalanime int,
totalwatching int,
totalcompleted int,
totalonhold int,
totaldropped int,
totalplantowatch int);

INSERT INTO user (useId, username, totalanime, totalwatching, totalcompleted, totalonhold, totaldropped, totalplantowatch) VALUES (
<xsl:value-of select="user_id"/> , '<xsl:value-of select="user_name"/>' , <xsl:value-of select="user_total_anime"/> , <xsl:value-of select="user_total_watching"/> , <xsl:value-of select="user_total_completed"/> , <xsl:value-of select="user_total_onhold"/> ,  <xsl:value-of select="user_total_dropped"/> , <xsl:value-of select="user_total_plantowatch"/> );

CREATE TABLE anime(
animeId int,
title varchar(255),
type varchar(255),
episodes int,
watchedepisodes int,
score int,
comments varchar(255));
  </xsl:template>

<xsl:template match="anime">

INSERT INTO anime (animeId, title, type, episodes, watchedepisodes, score, comments) VALUES (
<xsl:value-of select="series_animedb_id"/> , '<xsl:value-of select="series_title"/>' , '<xsl:value-of select="series_type"/>' , <xsl:value-of select="series_episodes"/> , <xsl:value-of select="my_watched_episodes"/> , <xsl:value-of select="my_score"/> ,  '<xsl:value-of select="my_comments"/>');

  </xsl:template>

</xsl:stylesheet>