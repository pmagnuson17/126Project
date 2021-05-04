CREATE SCHEMA `googleplay` ;

create table Applications (App mediumtext, Category tinytext, Rating tinytext, Reviews mediumtext, 
Size tinytext, Installs mediumtext, Paid tinytext, Price tinytext, Content_Rating mediumtext, Last_Updated mediumtext, 
Current_Version mediumtext, Android_Version mediumtext);

create table Reviews (App mediumtext, Review longtext, Sentiment mediumtext, Sentiment_Polarity float(6,5), 
Sentiment_Subjectivity float(7,6), Person_ID int);

create table People (id bigint, Gender text, Age int);

LOAD DATA LOCAL INFILE 'C:\\Users\\Pmag17\\Desktop\\126Project\\googleplaystore.csv' 
INTO TABLE applications FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'LINES TERMINATED BY '\n' IGNORE 0 ROWS;

LOAD DATA LOCAL INFILE 'C:\\Users\\Pmag17\\Desktop\\126Project\\People.csv' 
INTO TABLE people FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'LINES TERMINATED BY '\n' IGNORE 0 ROWS;

LOAD DATA LOCAL INFILE 'C:\\Users\\Pmag17\\Desktop\\126Project\\reviews.csv' 
INTO TABLE reviews FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'LINES TERMINATED BY '\n' IGNORE 0 ROWS;
