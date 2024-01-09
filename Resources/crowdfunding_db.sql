CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR (50) NOT NULL
);

CREATE TABLE category (
	category_id VARCHAR(30) PRIMARY KEY,
	category VARCHAR(30) NOT NULL
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR(30) PRIMARY KEY,
	subcategory VARCHAR(30) NOT NULL
);

CREATE TABLE campaign (
	cf_id INT NOT NULL,
	contact_id INT PRIMARY KEY,
	company_name VARCHAR(50) NOT NULL,
	description TEXT NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(30) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(10) NOT NULL,
	currency VARCHAR(10) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(30) NOT NULL,
	subcategory_id VARCHAR(30) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;