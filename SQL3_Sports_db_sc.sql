CREATE TABLE "teams"(
    "id" SERIAL NOT NULL,
    "name" VARCHAR(50) NOT NULL,
    "since" DATE NOT NULL,
    "team_value" DECIMAL(20, 1) NOT NULL
);
ALTER TABLE
    "teams" ADD PRIMARY KEY("id");
CREATE TABLE "players"(
    "id" SERIAL NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "surname" VARCHAR(100) NOT NULL,
    "number" VARCHAR(2) NOT NULL,
    "player_value" DECIMAL(15, 2) NOT NULL,
    "Gender" VARCHAR(20) NOT NULL,
    "salary" DECIMAL(12, 0) NOT NULL,
    "birth_date" DATE NOT NULL,
    "team_id" BIGINT NOT NULL,
    "country_id" BIGINT NOT NULL
);
ALTER TABLE
    "players" ADD PRIMARY KEY("id");
CREATE TABLE "branchs"(
    "id" SERIAL NOT NULL,
    "name" VARCHAR(100) NOT NULL
);
ALTER TABLE
    "branchs" ADD PRIMARY KEY("id");
CREATE TABLE "positions"(
    "id" SERIAL NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "branch_id" BIGINT NOT NULL
);
ALTER TABLE
    "positions" ADD PRIMARY KEY("id");
CREATE TABLE "coachs"(
    "id" SERIAL NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "surname" VARCHAR(100) NOT NULL,
    "Gender" VARCHAR(100) NOT NULL,
    "salary" DECIMAL(12, 2) NOT NULL,
    "birth_date" DATE NOT NULL,
    "country_id" BIGINT NOT NULL,
    "team_id" BIGINT NOT NULL,
    "branch_id" BIGINT NOT NULL
);
ALTER TABLE
    "coachs" ADD PRIMARY KEY("id");
CREATE TABLE "leagues"(
    "id" SERIAL NOT NULL,
    "name" BIGINT NOT NULL,
    "team_count" INTEGER NOT NULL,
    "country_id" BIGINT NOT NULL,
    "sponsorship_id" BIGINT NOT NULL
);
ALTER TABLE
    "leagues" ADD PRIMARY KEY("id");
CREATE TABLE "countries"(
    "id" SERIAL NOT NULL,
    "name" VARCHAR(100) NOT NULL
);
ALTER TABLE
    "countries" ADD PRIMARY KEY("id");
CREATE TABLE "sponsorships"(
    "id" SERIAL NOT NULL,
    "name" VARCHAR(200) NOT NULL,
    "description" TEXT NOT NULL,
    "value" DECIMAL(12, 2) NOT NULL
);
ALTER TABLE
    "sponsorships" ADD PRIMARY KEY("id");
CREATE TABLE "teams_branches"(
    "id" SERIAL NOT NULL,
    "team_id" BIGINT NOT NULL,
    "branch_id" BIGINT NOT NULL
);
ALTER TABLE
    "teams_branches" ADD PRIMARY KEY("id");
CREATE TABLE "team_leagues"(
    "id" SERIAL NOT NULL,
    "team_id" BIGINT NOT NULL,
    "league_id" BIGINT NOT NULL
);
ALTER TABLE
    "team_leagues" ADD PRIMARY KEY("id");
CREATE TABLE "players_positions"(
    "id" SERIAL NOT NULL,
    "player_id" BIGINT NOT NULL,
    "position_id" BIGINT NOT NULL
);
ALTER TABLE
    "players_positions" ADD PRIMARY KEY("id");
CREATE TABLE "teams_sponsorships"(
    "id" SERIAL NOT NULL,
    "team_id" BIGINT NOT NULL,
    "sponsorship_id" BIGINT NOT NULL
);
ALTER TABLE
    "teams_sponsorships" ADD PRIMARY KEY("id");
ALTER TABLE
    "teams_sponsorships" ADD CONSTRAINT "teams_sponsorships_sponsorship_id_foreign" FOREIGN KEY("sponsorship_id") REFERENCES "sponsorships"("id");
ALTER TABLE
    "coachs" ADD CONSTRAINT "coachs_team_id_foreign" FOREIGN KEY("team_id") REFERENCES "teams"("id");
ALTER TABLE
    "coachs" ADD CONSTRAINT "coachs_branch_id_foreign" FOREIGN KEY("branch_id") REFERENCES "branchs"("id");
ALTER TABLE
    "positions" ADD CONSTRAINT "positions_branch_id_foreign" FOREIGN KEY("branch_id") REFERENCES "branchs"("id");
ALTER TABLE
    "players_positions" ADD CONSTRAINT "players_positions_player_id_foreign" FOREIGN KEY("player_id") REFERENCES "players"("id");
ALTER TABLE
    "players_positions" ADD CONSTRAINT "players_positions_position_id_foreign" FOREIGN KEY("position_id") REFERENCES "positions"("id");
ALTER TABLE
    "players" ADD CONSTRAINT "players_team_id_foreign" FOREIGN KEY("team_id") REFERENCES "teams"("id");
ALTER TABLE
    "teams_branches" ADD CONSTRAINT "teams_branches_team_id_foreign" FOREIGN KEY("team_id") REFERENCES "teams"("id");
ALTER TABLE
    "teams_branches" ADD CONSTRAINT "teams_branches_branch_id_foreign" FOREIGN KEY("branch_id") REFERENCES "branchs"("id");
ALTER TABLE
    "coachs" ADD CONSTRAINT "coachs_country_id_foreign" FOREIGN KEY("country_id") REFERENCES "countries"("id");
ALTER TABLE
    "team_leagues" ADD CONSTRAINT "team_leagues_team_id_foreign" FOREIGN KEY("team_id") REFERENCES "teams"("id");
ALTER TABLE
    "leagues" ADD CONSTRAINT "leagues_sponsorship_id_foreign" FOREIGN KEY("sponsorship_id") REFERENCES "sponsorships"("id");
ALTER TABLE
    "teams_sponsorships" ADD CONSTRAINT "teams_sponsorships_team_id_foreign" FOREIGN KEY("team_id") REFERENCES "teams"("id");
ALTER TABLE
    "leagues" ADD CONSTRAINT "leagues_country_id_foreign" FOREIGN KEY("country_id") REFERENCES "countries"("id");
ALTER TABLE
    "team_leagues" ADD CONSTRAINT "team_leagues_league_id_foreign" FOREIGN KEY("league_id") REFERENCES "leagues"("id");
ALTER TABLE
    "players" ADD CONSTRAINT "players_country_id_foreign" FOREIGN KEY("country_id") REFERENCES "countries"("id");