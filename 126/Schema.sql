CREATE SCHEMA `googleplay` ;

create table Applications (App mediumtext, Category tinytext, Rating float(2,1), Reviews bigint, Size tinytext, Installs bigint, Paid bool, Price float(5,2), Content_Rating mediumtext, Last_Updated mediumtext, Current_Version mediumtext, Android_Version mediumtext);
create table Reviews (App mediumtext, Review longtext, Sentiment mediumtext, Sentiment_Polarity float(6,5), Sentiment_Subjectivity float(7,6), Person_ID int);
create table People (Person_ID bigint, Gender text, Age int);