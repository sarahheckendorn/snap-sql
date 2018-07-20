ALTER DATABASE sheckendorn CHARACTER SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS comment;

-- comment entity
CREATE TABLE comment (
	commentId BINARY(16) NOT NULL,
	commentDateTime TIMESTAMP,
	commentText VARCHAR(128),
	PRIMARY KEY (commentId)
);

INSERT INTO comment(commentId, commentDateTime, commentText) VALUES (UNHEX("96c4614113694638b493a9e2f27ce525"), "2018-07-20", "This is my first insert, yay!");
INSERT INTO comment (commentId, commentDateTime, commentText) VALUES (UNHEX("e410f70db3544cca9fce24ae4f1cc233"), TIMESTAMP ("2018-07-19"), "My Second insert, hurrah!");
INSERT INTO comment (commentId, commentDateTime, commentText) VALUES (UNHEX("0642f7689249489690fd85b452d0061f"), TIMESTAMP ("2018-06-13"), "My third insert!");

DELETE FROM comment WHERE commentId = UNHEX("96c4614113694638b493a9e2f27ce525");