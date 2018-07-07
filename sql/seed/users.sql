BEGIN TRANSACTION;
INSERT INTO users(name, email, entries, joined) values ('tim', 'tim@blah.com', '5', '2018-01-01');
INSERT INTO login (hash, email) values ('hashhere', 'tim@blah.com');
COMMIT;