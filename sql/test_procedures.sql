CREATE PROCEDURE InsertEvents(@events nvarchar(max))
AS BEGIN

    insert into Events(id, type, media_item_id, location_id, name, start, finish, reg_open, reg_waitlist, reg_close, is_public, roster_view_mode, pending_teams_view_mode, is_roster_email_enabled, sell_network_products, contact_email, organization_id, sport_id, ranking_weight, slug, rank_algorithm, twitter_handle, youtube_key, website_url, creator_id, created_at, updated_at, site_id)
    select id, type, media_item_id, location_id, name, start, finish, reg_open, reg_waitlist, reg_close, is_public, roster_view_mode, pending_teams_view_mode, is_roster_email_enabled, sell_network_products, contact_email, organization_id, sport_id, ranking_weight, slug, rank_algorithm, twitter_handle, youtube_key, website_url, creator_id, created_at, updated_at, site_id
    OPENJSON (@events)
     WITH (
            id int,
            type varchar(200),
            media_item_id int,
            location_id int,
            name varchar(200),
            start date,
            finish date,
            reg_open datetime,
            reg_close datetime,
            reg_close datetime,
            is_public boolean,
            roster_view_mode varchar(200),
            pending_teams_view_mode varchar(200),
            is_roster_email_enabled boolean,
            sell_network_products boolean,
            contact_email varchar(200),
            organization_id int,
            sport_id int,
            ranking_weight int,
            slug varchar(200),
            rank_algorithm varchar(200),
            twitter_handle varchar(200),
            youtube_key varchar(200),
            website_url varchar(200),
            creator_id int,
            created_at datetime,
            updated_at datetime,
            site_id int
     )

END
