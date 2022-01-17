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
	   VALUES ( 'Trilha Spring React', 'Trilha principal do curso', 1, 'https://raw.githubusercontent.com/devsuperior/bds-assets/main/img/student.png', null, 1, 1);
INSERT INTO tb_resource (title, description, position, img_uri, external_link, type, offer_id) 
	   VALUES ( 'Forum', 'Tire suas dúvidas', 2, 'https://raw.githubusercontent.com/devsuperior/bds-assets/main/img/student.png', null, 2, 1);
INSERT INTO tb_resource (title, description, position, img_uri, external_link, type, offer_id) 
	   VALUES ( 'Lives bônus', 'Lives exclusivas', 3, 'https://raw.githubusercontent.com/devsuperior/bds-assets/main/img/student.png', null, 0, 1);
	   
/*SECTION*/
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id)
	   VALUES ( 'Capítulo 1', 'Neste capítulo vamos começar', 1, 'https://raw.githubusercontent.com/devsuperior/bds-assets/main/img/student.png', 1, null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id)
	   VALUES ( 'Capítulo 2', 'Iniciando os cadastros', 2, 'https://raw.githubusercontent.com/devsuperior/bds-assets/main/img/student.png', 1, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id)
	   VALUES ( 'Capítulo 3', 'Finalizando os cadastros', 3, 'https://raw.githubusercontent.com/devsuperior/bds-assets/main/img/student.png', 1, 2);

/*ENROLLMENT*/
INSERT INTO tb_enrollment (enroll_moment, refund_moment, available, only_update, user_id, offer_id) 
	   VALUES (TIMESTAMP WITH TIME ZONE '2023-01-17T13:00:00Z', null, true, false, 1, 1);
INSERT INTO tb_enrollment (enroll_moment, refund_moment, available, only_update, user_id, offer_id) 
	   VALUES (TIMESTAMP WITH TIME ZONE '2023-01-17T13:00:00Z', null, true, false, 2, 1);