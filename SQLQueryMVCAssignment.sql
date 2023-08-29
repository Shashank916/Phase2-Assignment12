create Database BlogDb
use BlogDb

create table Posts
(Id int primary key,
Title nvarchar(100),
Content nvarchar(500),
PublicationDate date,
Author nvarchar(50))

create table Comment
(Id int primary key,
Content nvarchar(200),
PublicationDate datetime,
PostId int foreign key references Posts(Id))

insert into Posts values (1,'How to convey your design ideas during meetings','Depending on the stage and the purpose of your design communication, you may need to choose different formats to showcase your design ideas. Some of the common formats are sketches, mockups, wireframes, models, prototypes, and presentations.','08/13/2022','Arthur Clarke')
insert into Posts values (2,'10 Steps to ruining an entire industry featuring Hollywood','In a recent poll, 42% cite movies getting worse as the main reason they no longer pay to see them. Why have they gotten worse? Because Hollywood swapped great storytelling for franchise movies long ago, then they transformed those franchise movies into agenda-delivery devices.','12/16/2021','Sasha Stone')
insert into Posts values (3,'How Microsoft is winning over Google', 'Microsofts recent accomplishments in artificial intelligence are putting significant pressure on Google. The innovations include the impressive ChatGPT chatbot, Microsoft Edges AI enhancements, and the integration of AI “Co-pilot” with Bing and Office 365.','04/07/2023','Yana Khare')

insert into Comment values (1,'An amazing insight into how to make design ideas more robust. Thanks!!','09/07/2022 17:20:54',1)
insert into Comment values (2,'Thanks for the insightful blog, I will try Microsoft products for a bit to see if they make a difference or not!','04/23/2023 10:30:45',3)
insert into Comment values (3,'An amazing article focusing on points needed to build a better design. Thanks!', '08/13/2022 21:55:06',1)
insert into Comment values (4,'True true. Its so depressing seeing such a behemoth runied due to something like this.','11/17/2022 14:48:25',2)
insert into Comment values (5,'Thank you for such a detailed review of the products, will definitely try oout your recommendations!!','07/09/2023 12:11:11',3)
insert into Comment values (6,'I totally agree. The sheer creative bankruptcy on show is honestly a little sad NGL.','12/12/2021 12:12:12',2)

select * from Posts
select * from Comment