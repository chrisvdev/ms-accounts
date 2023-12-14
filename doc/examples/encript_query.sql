CREATE EXTENSION pgcrypto;

CREATE TABLE tb (col1 text);
INSERT INTO tb VALUES ('1'),('2');
ALTER TABLE tb   ADD COLUMN password text default '';
UPDATE tb SET password = crypt(col1, gen_salt('md5'));