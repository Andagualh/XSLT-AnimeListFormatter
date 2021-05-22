DROP TABLE MYINFO;
DROP TABLE ANIME;

CREATE TABLE myinfo (
  user_id int,
  user_name varchar(255),
  user_export_type int,
  user_total_anime int,
  user_total_watching int,
  user_total_completed int,
  user_total_onhold int,
  user_total_dropped int,
  user_total_plantowatch int
);

CREATE TABLE anime(
    series_animedb_id int,
    series_title varchar(255),
    series_type varchar(255),
    series_episodes int,
    my_id int,
    my_watched_episodes int,
    my_start_date varchar(255),
    my_finish_date varchar(255),
    my_rated int,
    my_score int,
    my_storage varchar(255),
    my_storage_value varchar(255),
    my_status varchar(255),
    my_comments varchar(255),
    my_times_watched int,
    my_rewatch_value varchar(255),
    my_priority varchar(255),
    my_tags varchar(255),
    my_rewatching int,
    my_rewatching_ep int,
    my_discuss int,
    my_sns varchar(255),
    update_on_import int);
    