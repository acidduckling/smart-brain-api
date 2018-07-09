BEGIN TRANSACTION;
INSERT INTO users(name, email, entries, joined) values ('a', 'a@a.com', '5', '2018-01-01');
INSERT INTO login (hash, email) values ('$2a$10$sNmzeOQNPQQbMTCLvJ9wN.KEtUXiQlOC62LJTBvRJ/IYyIOoNkW5K', 'a@a.com');
COMMIT;