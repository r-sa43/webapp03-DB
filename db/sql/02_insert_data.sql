LOCK TABLES `m_users` WRITE;
INSERT INTO webappdb.m_users (name,password,email,created_at,updated_at) VALUES
	 ('user1','$2a$10$WL7N.ouKrgGyGfVjjPBtTOgOivB4XtjSDXWGAfgf3WOOg4ZbUA4oe','test@gmail.com','2022-02-18 18:07:47','2022-02-18 18:07:47');
UNLOCK TABLES;

LOCK TABLES `d_posts` WRITE;
INSERT INTO webappdb.d_posts (post_id,user_id,contents,created_at) VALUES
	 (1,1,'contet-txt','2022-02-18 18:08:08');
UNLOCK TABLES;

LOCK TABLES `d_good` WRITE;
INSERT INTO webappdb.d_good (post_id, user_id) VALUES
	 (1,1);
UNLOCK TABLES;