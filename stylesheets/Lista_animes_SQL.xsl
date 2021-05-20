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

INSERT INTO user (userId, username, totalanime, totalwatching, totalcompleted, totalonhold, totaldropped, totalplantowatch) VALUES (
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