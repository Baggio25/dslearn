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
	   VALUES ( 'Forum', 'Tire suas d??vidas', 2, 'https://raw.githubusercontent.com/devsuperior/bds-assets/main/img/student.png', null, 2, 1);
INSERT INTO tb_resource (title, description, position, img_uri, external_link, type, offer_id) 
	   VALUES ( 'Lives b??nus', 'Lives exclusivas', 3, 'https://raw.githubusercontent.com/devsuperior/bds-assets/main/img/student.png', null, 0, 1);
	   
/*SECTION*/
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id)
	   VALUES ( 'Cap??tulo 1', 'Neste cap??tulo vamos come??ar', 1, 'https://raw.githubusercontent.com/devsuperior/bds-assets/main/img/student.png', 1, null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id)
	   VALUES ( 'Cap??tulo 2', 'Iniciando os cadastros', 2, 'https://raw.githubusercontent.com/devsuperior/bds-assets/main/img/student.png', 1, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id)
	   VALUES ( 'Cap??tulo 3', 'Finalizando os cadastros', 3, 'https://raw.githubusercontent.com/devsuperior/bds-assets/main/img/student.png', 1, 2);

/*ENROLLMENT*/
INSERT INTO tb_enrollment (enroll_moment, refund_moment, available, only_update, user_id, offer_id) 
	   VALUES (TIMESTAMP WITH TIME ZONE '2023-01-17T13:00:00Z', null, true, false, 1, 1);
INSERT INTO tb_enrollment (enroll_moment, refund_moment, available, only_update, user_id, offer_id) 
	   VALUES (TIMESTAMP WITH TIME ZONE '2023-01-17T13:00:00Z', null, true, false, 2, 1);
	   
/*LESSON, CONTENT E TASK -- HERAN??A*/
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 01 do Cap 1', 1, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (1, 'Material de Apoio', 'https://www.youtube.com/watch?v=IFI0h97gqzc');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 02 do Cap 1', 2, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (2, '', 'https://www.youtube.com/watch?v=IFI0h97gqzc');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 03 do Cap 1', 3, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (3, '', 'https://www.youtube.com/watch?v=IFI0h97gqzc');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do Cap 1', 4, 1);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (4, 'Fazer um trabalho legal', 5, 4, 1.0, 
		TIMESTAMP WITH TIME ZONE '2023-01-25T03:00:00Z');

/*LESSONS DONE*/
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (3, 1, 1);

/*NOTIFICATION*/
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: revisar', 
		TIMESTAMP WITH TIME ZONE '2023-01-27T03:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback de tarefa: revisar', 
		TIMESTAMP WITH TIME ZONE '2023-01-28T03:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback de tarefa: revisar', 
		TIMESTAMP WITH TIME ZONE '2023-01-29T03:00:00Z', true, '/offers/1/resource/1/sections/1', 1);

/*DELIVER*/
INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id)
		VALUES ('https://github.com/devsuperior/bds-dslearn', TIMESTAMP WITH TIME ZONE '2023-01-30T03:00:00Z', 0, null, null, 3, 1, 1);

/*TOPIC*/
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('T??tulo do t??pico 1', 'Corpo do t??pico 1', TIMESTAMP WITH TIME ZONE '2022-01-29T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('T??tulo do t??pico 2', 'Corpo do t??pico 2', TIMESTAMP WITH TIME ZONE '2022-01-29T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('T??tulo do t??pico 3', 'Corpo do t??pico 3', TIMESTAMP WITH TIME ZONE '2022-01-29T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('T??tulo do t??pico 4', 'Corpo do t??pico 4', TIMESTAMP WITH TIME ZONE '2022-01-29T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('T??tulo do t??pico 5', 'Corpo do t??pico 5', TIMESTAMP WITH TIME ZONE '2022-01-29T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('T??tulo do t??pico 6', 'Corpo do t??pico 6', TIMESTAMP WITH TIME ZONE '2022-01-29T13:00:00Z', 2, 1, 3);

/*TOPIC / LIKES*/
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

/*REPLY*/
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Tente reiniciar o computador', TIMESTAMP WITH TIME ZONE '2022-01-29T13:00:00Z', 1, 2);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Deu certo, valeu!', TIMESTAMP WITH TIME ZONE '2022-01-29T13:00:00Z', 1, 1);

/*REPLY / LIKES*/
INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);



