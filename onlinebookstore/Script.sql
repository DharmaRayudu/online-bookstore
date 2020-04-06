--<ScriptOptions statementTerminator=";"/>

CREATE TABLE tbl_book (
	id BIGINT NOT NULL,
	sku VARCHAR(255),
	name VARCHAR(255),
	description VARCHAR(255),
	unit_price DECIMAL(10 , 2),
	image_url VARCHAR(255),
	active BIT DEFAULT b'1',
	units_in_stock INT,
	date_created DATETIME,
	last_updated DATETIME,
	category_id BIGINT NOT NULL,
	PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE INDEX category_id ON tbl_book (category_id ASC);

ALTER TABLE tbl_book ADD CONSTRAINT tbl_book_ibfk_1 FOREIGN KEY (category_id)
	REFERENCES tbl_category (id)
	ON DELETE RESTRICT
	ON UPDATE RESTRICT;

