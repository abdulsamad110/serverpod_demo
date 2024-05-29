BEGIN;

--
-- ACTION DROP TABLE
--
DROP TABLE "company" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "company" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "description" text NOT NULL
);


--
-- MIGRATION VERSION FOR mypod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('mypod', '20240528084049821', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240528084049821', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();

--
-- MIGRATION VERSION FOR _repair
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('_repair', '20240528084335614', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240528084335614', "timestamp" = now();


COMMIT;
