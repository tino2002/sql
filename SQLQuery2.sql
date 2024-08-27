create database gamedb;
use gamedb;

select * from game
select trochoi from game
select * from game WHERE trochoi = 'ban bi'
create table game 
  (trochoi nvarchar(50) primary key not null, 
   duongdan nvarchar(100),
   ghichu nvarchar(500));
INSERT INTO game VALUES (N'ban bi', N'C:\Users\vum82\OneDrive\Máy tính\tcdg\img\banbi.jpg',N'ccccccccccc');
INSERT INTO game VALUES (N'bit mat bat de', N'C:\Users\vum82\OneDrive\Máy tính\tcdg\img\bitmatbatde.jpg',N'ccccccccccc');
INSERT INTO game VALUES (N'ca sau len bo', N'C:\Users\vum82\OneDrive\Máy tính\tcdg\img\casaulenbo.jpg',N'ccccccccccc');
INSERT INTO game VALUES (N'cuop co', N'C:\Users\vum82\OneDrive\Máy tính\tcdg\img\cuopco.jpg',N'ccccccccccc');
INSERT INTO game VALUES (N'keo co', N'C:\Users\vum82\OneDrive\Máy tính\tcdg\img\keoco.jpg',N'ccccccccccc');
INSERT INTO game VALUES (N'meo duoi chuot', N'C:\Users\vum82\OneDrive\Máy tính\tcdg\img\meoduoichuot.png',N'ccccccccccc');
INSERT INTO game VALUES (N'nem con', N'C:\Users\vum82\OneDrive\Máy tính\tcdg\img\nemcon.jpg',N'ccccccccccc');
INSERT INTO game VALUES (N'nem lon', N'C:\Users\vum82\OneDrive\Máy tính\tcdg\img\nemlon.jpg',N'ccccccccccc');
INSERT INTO game VALUES (N'nhay day', N'C:\Users\vum82\OneDrive\Máy tính\tcdg\img\nhayday.jpg',N'ccccccccccc');
INSERT INTO game VALUES (N'nu na nu nong', N'C:\Users\vum82\OneDrive\Máy tính\tcdg\img\nunanunong.jpg',N'ccccccccccc');
INSERT INTO game VALUES (N'tron tim', N'C:\Users\vum82\OneDrive\Máy tính\tcdg\img\trontim.jpg',N'ccccccccccc');
INSERT INTO game VALUES (N'bắn bi', N'C:\Users\vum82\OneDrive\Máy tính\tcdg\img\banbi.jpg',N'ccccccccccc');
INSERT INTO game VALUES (N'bịt mắt bắt dê', N'C:\Users\vum82\OneDrive\Máy tính\tcdg\img\bitmatbatde.jpg',N'ccccccccccc');
INSERT INTO game VALUES (N'cá sấu lên bờ', N'C:\users\vum82\OneDrive\Máy tính\tcdg\img\casaulenbo.jpg',N'ccccccccccc');
INSERT INTO game VALUES (N'cướp cờ', N'C:\Users\vum82\OneDrive\Máy tính\tcdg\img\cuopco.jpg',N'ccccccccccc');
INSERT INTO game VALUES (N'kéo co', N'C:\Users\vum82\OneDrive\Máy tính\tcdg\img\keoco.jpg',N'ccccccccccc');
INSERT INTO game VALUES (N'mèo đuổi chuột', N'C:\Users\vum82\OneDrive\Máy tính\tcdg\img\meoduoichuot.png',N'ccccccccccc');
INSERT INTO game VALUES (N'ném còn', N'C:\Users\vum82\OneDrive\Máy tính\tcdg\img\nemcon.jpg',N'ccccccccccc');
INSERT INTO game VALUES (N'ném lon', N'C:\Users\vum82\OneDrive\Máy tính\tcdg\img\nemlon.jpg',N'ccccccccccc');
INSERT INTO game VALUES (N'nhảy dây', N'C:\Users\vum82\OneDrive\Máy tính\tcdg\img\nhayday.jpg',N'ccccccccccc');
INSERT INTO game VALUES (N'nu na nu nống', N'C:\Users\vum82\OneDrive\Máy tính\tcdg\img\nunanunong.jpg',N'ccccccccccc');
INSERT INTO game VALUES (N'trốn tìm', N'C:\Users\vum82\OneDrive\Máy tính\tcdg\img\trontim.jpg',N'ccccccccccc');
DROP TABLE game