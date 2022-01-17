/*USER*/
INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

/*ROLE*/
INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

/*USER_ROLE*/
INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

/*COURSE*/
INSERT INTO tb_course (name, img_uri, img_gray_uri) 
	   VALUES ('Bootcamp Spring React Fullstack', 'https://raw.githubusercontent.com/devsuperior/bds-assets/main/img/student.png', 'https://raw.githubusercontent.com/devsuperior/bds-assets/main/img/bonus.png');

/*OFFER*/
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) 
	   VALUES ( '1.0', TIMESTAMP WITH TIME ZONE '2022-01-11T03:00:00Z', TIMESTAMP WITH TIME ZONE '2023-01-11T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) 
	   VALUES ( '1.0', TIMESTAMP WITH TIME ZONE '2022-02-11T03:00:00Z', TIMESTAMP WITH TIME ZONE '2023-02-11T03:00:00Z', 1);
	   
/*RESOURCE*/
INSERT INTO tb_resource (title, description, position, img_uri, external_link, type, offer_id) 
	   VALUES ( 'Trilha Spring React', 'Trilha principal do curso', 1, 'https://raw.githubusercontent.com/devsuperior/bds-assets/main/img/student.png', '', 1, 1);
INSERT INTO tb_resource (title, description, position, img_uri, external_link, type, offer_id) 
	   VALUES ( 'Forum', 'Tire suas dúvidas', 2, 'https://raw.githubusercontent.com/devsuperior/bds-assets/main/img/student.png', '', 2, 1);
INSERT INTO tb_resource (title, description, position, img_uri, external_link, type, offer_id) 
	   VALUES ( 'Lives bônus', 'Lives exclusivas', 3, 'https://raw.githubusercontent.com/devsuperior/bds-assets/main/img/student.png', '', 0, 1);