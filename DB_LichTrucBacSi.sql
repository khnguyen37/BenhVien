﻿--tạo các bảng
CREATE DATABASE QLBV
go
USE QLBV
delete from PHONG
CREATE TABLE BACSI
(
MABS varchar(10),
KHOA  nvarchar(30),
HOTEN nvarchar(50),
PHAI nvarchar(10),
QUEQUAN nvarchar(50),
NAMSINH int,
Constraint PK_BACSI PRIMARY KEY (MABS),
)

CREATE TABLE PHONG
(
MAPHG varchar(10),
TENPHONG nvarchar(50),
Constraint PK_PHONG PRIMARY KEY (MAPHG)
)

CREATE TABLE LICHTRUC
(
MALT  varchar(10),
MABS varchar(10),
NGAYTRUC DATE,
CA NVARCHAR(10),
MAPHG varchar(10),
Constraint PK_LICHTRUC PRIMARY KEY (MALT),
Constraint FK_LICHTRUC_BACSI FOREIGN KEY (MABS) REFERENCES BACSI (MABS),
Constraint FK_LICHTRUC_PHONG FOREIGN KEY (MAPHG) REFERENCES PHONG (MAPHG),
)


--nhập dữ liệu 


SET DATEFORMAT DMY 
INSERT INTO BACSI
VALUES
('BS01', N'Nội', N'Phạm Văn Hải',	N'NAM', N'TP.HCM', '1975'),
('BS02', N'Ngoại', N'Phạm Văn Mạnh',	N'NAM', N'TP.HCM', '1980'),
('BS03', N'Tim mạch', N'Nguyễn Hải Yến', N'NỮ', N'HẢI PHÒNG', '1980'),
('BS04', N'Răng hàm mặt', N'Nguyễn Linh Chi',N'NỮ', N'HẢI PHÒNG', '1963'),
('BS05', N'Da liễu', N'Nguyễn Duy Anh', N'NAM', N'PHAN THIẾT', '1981'),
('BS06', N'Nhi', N'Nguyễn Gia Huy', N'NAM', N'PHAN THIẾT', '1980'),
('BS07', N'Ngoại thần kinh', N'Nguyễn Thúy Vy', N'NỮ', N'ĐỒNG NAI',	 '1980'),
('BS08', N'Phụ sản', N'Huỳnh Mỹ Trân',N'NỮ', N'TP.HCM',	  '1979'),
('BS09', N'Nội thần kinh', N'Trần Hải Đăng',	N'NAM', N'ĐỒNG NAI', '1978'),
('BS10', N'Cấp cứu', N'Trần Ngọc Tuấn', N'NAM', N'TP.HCM', '1977'),
('BS11', N'Nội', N'Huỳnh Văn Út',	N'NAM', N'VŨNG TÀU', '1977'),
('BS12', N'Ngoại', N'Huỳnh Quốc Bảo',	N'NAM', N'LONG AN', '1979'),
('BS13', N'Tim mạch', N'Nguyễn Minh Thy', N'NỮ',	N'CÀ MAU',	  '1983'),
('BS14', N'Răng hàm mặt', N'Nguyễn Ngọc Quỳnh',N'NỮ', N'TIỀN GIANG', '1980'),
('BS15', N'Da liễu', N'Nguyễn Nhật Trung', N'NAM', N'SÓC TRĂNG', '1975'),
('BS16', N'Nhi', N'Nguyễn Duy Kỳ', N'NAM', N'CẦN THƠ',	 '1960'),
('BS17', N'Ngoại thần kinh', N'Nguyễn Linh Ân', N'NỮ', N'VĨNH LONG',  '1959'),
('BS18', N'Phụ sản', N'Nguyễn Thị Thu',N'NỮ', N'QUÃNG NGÃI', '1969'),
('BS19', N'Nội thần kinh', N'Nguyễn Đình Tú',	N'NAM', N'ĐÀ NẴNG',	'1961'),
('BS20', N'Cấp cứu', N'Lư Phước Toàn', N'NAM', N'ĐÀ NẴNG',	'1964'),
('BS21', N'Nội', N'Đặng Phúc Khang',N'NAM', N'CẦN THƠ',	'1965'),
('BS22', N'Ngoại', N'Trần Thiên Lộc',	N'NAM', N'TP.HCM', '1966'),
('BS23', N'Tim mạch', N'Nguyễn Thanh Thư', N'NỮ', N'SÓC TRĂNG', '1975'),
('BS24', N'Răng hàm mặt', N'Nguyễn Thu Tuyết',N'NỮ', N'HẢI PHÒNG',  '1976'),
('BS25', N'Da liễu', N'Nguyễn Huệ Mẫn',N'NỮ', N'HẢI PHÒNG',  '1979'),
('BS26', N'Nhi', N'Trần Vĩ Hào',    N'NAM', N'PHAN THIẾT', '1978'),
('BS27', N'Ngoại thần kinh', N'Nguyễn Tuyết Nhi', N'NỮ', N'ĐỒNG NAI',	'1982'),
('BS28', N'Phụ sản', N'Nguyễn Yến Xuân',N'NỮ', N'TP.HCM',	    '1965'),
('BS29', N'Nội thần kinh', N'Trần Xuân Phúc',	N'NAM', N'TIỀN GIANG', '1965'),
('BS30', N'Cấp cứu', N'Phạm Bảo Duy', N'NAM', N'TP.HCM', '1963');

INSERT INTO PHONG
VALUES
('P001', N'Phòng khám nội'),
('P002', N'Phòng khám ngoại'),
('P003', N'Phòng khám tim mạch'),
('P004', N'Phòng khám răng hàm mặt'),
('P005', N'Phòng khám da liễu'),
('P006', N'Phòng khám nhi'),
('P007', N'Phòng khám ngoại thần kinh'),
('P008', N'Phòng khám phụ sản'),
('P009', N'Phòng khám nội thần kinh'),
('PHCC', N'Phòng Cấp cứu');

SET DATEFORMAT DMY 
INSERT INTO LICHTRUC
VALUES
('LTT6001', 'BS01', '01-06-2021', 'Ca ngày', 'P001'),
('LTT6002', 'BS02', '01-06-2021', 'Ca ngày', 'P002'),
('LTT6003', 'BS03', '01-06-2021', 'Ca ngày', 'P003'),
('LTT6004', 'BS04', '01-06-2021', 'Ca ngày', 'P004'),
('LTT6005', 'BS05', '01-06-2021', 'Ca ngày', 'P005'), 
('LTT6006', 'BS06', '01-06-2021', 'Ca ngày', 'P006'),
('LTT6007', 'BS07', '01-06-2021', 'Ca ngày', 'P007'),
('LTT6008', 'BS08', '01-06-2021', 'Ca ngày', 'P008'), 
('LTT6009', 'BS09', '01-06-2021', 'Ca ngày', 'P009'),
('LTT6010', 'BS10', '01-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6011', 'BS20', '01-06-2021', 'Ca đêm', 'PHCC'),

('LTT6012', 'BS11', '02-06-2021', 'Ca ngày', 'P001'),
('LTT6013', 'BS12', '02-06-2021', 'Ca ngày', 'P002'),
('LTT6014', 'BS13', '02-06-2021', 'Ca ngày', 'P003'),
('LTT6015', 'BS14', '02-06-2021', 'Ca ngày', 'P004'),
('LTT6016', 'BS15', '02-06-2021', 'Ca ngày', 'P005'), 
('LTT6017', 'BS16', '02-06-2021', 'Ca ngày', 'P006'),
('LTT6018', 'BS17', '02-06-2021', 'Ca ngày', 'P007'),
('LTT6019', 'BS18', '02-06-2021', 'Ca ngày', 'P008'), 
('LTT6020', 'BS19', '02-06-2021', 'Ca ngày', 'P009'),
('LTT6021', 'BS30', '02-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6022', 'BS10', '02-06-2021', 'Ca đêm', 'PHCC'),

('LTT6023', 'BS21', '03-06-2021', 'Ca ngày', 'P001'),
('LTT6024', 'BS22', '03-06-2021', 'Ca ngày', 'P002'),
('LTT6025', 'BS23', '03-06-2021', 'Ca ngày', 'P003'),
('LTT6026', 'BS24', '03-06-2021', 'Ca ngày', 'P004'),
('LTT6027', 'BS25', '03-06-2021', 'Ca ngày', 'P005'), 
('LTT6028', 'BS26', '03-06-2021', 'Ca ngày', 'P006'),
('LTT6029', 'BS27', '03-06-2021', 'Ca ngày', 'P007'),
('LTT6030', 'BS28', '03-06-2021', 'Ca ngày', 'P008'), 
('LTT6031', 'BS29', '03-06-2021', 'Ca ngày', 'P009'),
('LTT6032', 'BS20', '03-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6033', 'BS30', '03-06-2021', 'Ca đêm', 'PHCC'),

('LTT6034', 'BS01', '04-06-2021', 'Ca ngày', 'P001'),
('LTT6035', 'BS02', '04-06-2021', 'Ca ngày', 'P002'),
('LTT6036', 'BS03', '04-06-2021', 'Ca ngày', 'P003'),
('LTT6037', 'BS04', '04-06-2021', 'Ca ngày', 'P004'),
('LTT6038', 'BS05', '04-06-2021', 'Ca ngày', 'P005'), 
('LTT6039', 'BS06', '04-06-2021', 'Ca ngày', 'P006'),
('LTT6040', 'BS07', '04-06-2021', 'Ca ngày', 'P007'),
('LTT6041', 'BS08', '04-06-2021', 'Ca ngày', 'P008'), 
('LTT6042', 'BS09', '04-06-2021', 'Ca ngày', 'P009'),
('LTT6043', 'BS10', '04-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6044', 'BS20', '04-06-2021', 'Ca đêm', 'PHCC'),

('LTT6045', 'BS11', '05-06-2021', 'Ca ngày', 'P001'),
('LTT6046', 'BS12', '05-06-2021', 'Ca ngày', 'P002'),
('LTT6047', 'BS13', '05-06-2021', 'Ca ngày', 'P003'),
('LTT6048', 'BS14', '05-06-2021', 'Ca ngày', 'P004'),
('LTT6049', 'BS15', '05-06-2021', 'Ca ngày', 'P005'), 
('LTT6050', 'BS16', '05-06-2021', 'Ca ngày', 'P006'),
('LTT6051', 'BS17', '05-06-2021', 'Ca ngày', 'P007'),
('LTT6052', 'BS18', '05-06-2021', 'Ca ngày', 'P008'), 
('LTT6053', 'BS19', '05-06-2021', 'Ca ngày', 'P009'),
('LTT6054', 'BS30', '05-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6055', 'BS10', '05-06-2021', 'Ca đêm', 'PHCC'),

('LTT6056', 'BS20', '06-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6057', 'BS30', '06-06-2021', 'Ca đêm', 'PHCC'),

('LTT6058', 'BS21', '07-06-2021', 'Ca ngày', 'P001'),
('LTT6059', 'BS22', '07-06-2021', 'Ca ngày', 'P002'),
('LTT6060', 'BS23', '07-06-2021', 'Ca ngày', 'P003'),
('LTT6061', 'BS24', '07-06-2021', 'Ca ngày', 'P004'),
('LTT6062', 'BS25', '07-06-2021', 'Ca ngày', 'P005'), 
('LTT6063', 'BS26', '07-06-2021', 'Ca ngày', 'P006'),
('LTT6064', 'BS27', '07-06-2021', 'Ca ngày', 'P007'),
('LTT6065', 'BS28', '07-06-2021', 'Ca ngày', 'P008'), 
('LTT6066', 'BS29', '07-06-2021', 'Ca ngày', 'P009'),
('LTT6067', 'BS10', '07-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6068', 'BS20', '07-06-2021', 'Ca đêm', 'PHCC'),

('LTT6069', 'BS01', '08-06-2021', 'Ca ngày', 'P001'),
('LTT6070', 'BS02', '08-06-2021', 'Ca ngày', 'P002'),
('LTT6071', 'BS03', '08-06-2021', 'Ca ngày', 'P003'),
('LTT6072', 'BS04', '08-06-2021', 'Ca ngày', 'P004'),
('LTT6073', 'BS05', '08-06-2021', 'Ca ngày', 'P005'), 
('LTT6074', 'BS06', '08-06-2021', 'Ca ngày', 'P006'),
('LTT6075', 'BS07', '08-06-2021', 'Ca ngày', 'P007'),
('LTT6076', 'BS08', '08-06-2021', 'Ca ngày', 'P008'), 
('LTT6077', 'BS09', '08-06-2021', 'Ca ngày', 'P009'),
('LTT6078', 'BS30', '08-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6079', 'BS10', '08-06-2021', 'Ca đêm', 'PHCC'),

('LTT6080', 'BS11', '09-06-2021', 'Ca ngày', 'P001'),
('LTT6081', 'BS12', '09-06-2021', 'Ca ngày', 'P002'),
('LTT6082', 'BS13', '09-06-2021', 'Ca ngày', 'P003'),
('LTT6083', 'BS14', '09-06-2021', 'Ca ngày', 'P004'),
('LTT6084', 'BS15', '09-06-2021', 'Ca ngày', 'P005'), 
('LTT6085', 'BS16', '09-06-2021', 'Ca ngày', 'P006'),
('LTT6086', 'BS17', '09-06-2021', 'Ca ngày', 'P007'),
('LTT6087', 'BS18', '09-06-2021', 'Ca ngày', 'P008'), 
('LTT6088', 'BS19', '09-06-2021', 'Ca ngày', 'P009'),
('LTT6089', 'BS20', '09-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6090', 'BS30', '09-06-2021', 'Ca đêm', 'PHCC'),

('LTT6091', 'BS21', '10-06-2021', 'Ca ngày', 'P001'),
('LTT6092', 'BS22', '10-06-2021', 'Ca ngày', 'P002'),
('LTT6093', 'BS23', '10-06-2021', 'Ca ngày', 'P003'),
('LTT6094', 'BS24', '10-06-2021', 'Ca ngày', 'P004'),
('LTT6095', 'BS25', '10-06-2021', 'Ca ngày', 'P005'), 
('LTT6096', 'BS26', '10-06-2021', 'Ca ngày', 'P006'),
('LTT6097', 'BS27', '10-06-2021', 'Ca ngày', 'P007'),
('LTT6098', 'BS28', '10-06-2021', 'Ca ngày', 'P008'), 
('LTT6099', 'BS29', '10-06-2021', 'Ca ngày', 'P009'),
('LTT6100', 'BS10', '10-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6101', 'BS20', '10-06-2021', 'Ca đêm', 'PHCC'),

('LTT6102', 'BS01', '11-06-2021', 'Ca ngày', 'P001'),
('LTT6103', 'BS02', '11-06-2021', 'Ca ngày', 'P002'),
('LTT6104', 'BS03', '11-06-2021', 'Ca ngày', 'P003'),
('LTT6105', 'BS04', '11-06-2021', 'Ca ngày', 'P004'),
('LTT6106', 'BS05', '11-06-2021', 'Ca ngày', 'P005'), 
('LTT6107', 'BS06', '11-06-2021', 'Ca ngày', 'P006'),
('LTT6108', 'BS07', '11-06-2021', 'Ca ngày', 'P007'),
('LTT6109', 'BS08', '11-06-2021', 'Ca ngày', 'P008'), 
('LTT6110', 'BS09', '11-06-2021', 'Ca ngày', 'P009'),
('LTT6111', 'BS30', '11-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6112', 'BS10', '11-06-2021', 'Ca đêm', 'PHCC'),

('LTT6113', 'BS11', '12-06-2021', 'Ca ngày', 'P001'),
('LTT6114', 'BS12', '12-06-2021', 'Ca ngày', 'P002'),
('LTT6115', 'BS13', '12-06-2021', 'Ca ngày', 'P003'),
('LTT6116', 'BS14', '12-06-2021', 'Ca ngày', 'P004'),
('LTT6117', 'BS15', '12-06-2021', 'Ca ngày', 'P005'), 
('LTT6118', 'BS16', '12-06-2021', 'Ca ngày', 'P006'),
('LTT6119', 'BS17', '12-06-2021', 'Ca ngày', 'P007'),
('LTT6120', 'BS18', '12-06-2021', 'Ca ngày', 'P008'), 
('LTT6121', 'BS19', '12-06-2021', 'Ca ngày', 'P009'),
('LTT6122', 'BS20', '12-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6123', 'BS30', '12-06-2021', 'Ca đêm', 'PHCC'),

('LTT6124', 'BS10', '13-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6125', 'BS20', '13-06-2021', 'Ca đêm', 'PHCC'),

('LTT6126', 'BS21', '14-06-2021', 'Ca ngày', 'P001'),
('LTT6127', 'BS22', '14-06-2021', 'Ca ngày', 'P002'),
('LTT6128', 'BS23', '14-06-2021', 'Ca ngày', 'P003'),
('LTT6129', 'BS24', '14-06-2021', 'Ca ngày', 'P004'),
('LTT6130', 'BS25', '14-06-2021', 'Ca ngày', 'P005'), 
('LTT6131', 'BS26', '14-06-2021', 'Ca ngày', 'P006'),
('LTT6132', 'BS27', '14-06-2021', 'Ca ngày', 'P007'),
('LTT6133', 'BS28', '14-06-2021', 'Ca ngày', 'P008'), 
('LTT6134', 'BS29', '14-06-2021', 'Ca ngày', 'P009'),
('LTT6135', 'BS30', '14-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6136', 'BS10', '14-06-2021', 'Ca đêm', 'PHCC'),

('LTT6137', 'BS01', '15-06-2021', 'Ca ngày', 'P001'),
('LTT6138', 'BS02', '15-06-2021', 'Ca ngày', 'P002'),
('LTT6139', 'BS03', '15-06-2021', 'Ca ngày', 'P003'),
('LTT6140', 'BS04', '15-06-2021', 'Ca ngày', 'P004'),
('LTT6141', 'BS05', '15-06-2021', 'Ca ngày', 'P005'), 
('LTT6142', 'BS06', '15-06-2021', 'Ca ngày', 'P006'),
('LTT6143', 'BS07', '15-06-2021', 'Ca ngày', 'P007'),
('LTT6144', 'BS08', '15-06-2021', 'Ca ngày', 'P008'), 
('LTT6145', 'BS09', '15-06-2021', 'Ca ngày', 'P009'),
('LTT6146', 'BS20', '15-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6147', 'BS30', '15-06-2021', 'Ca đêm', 'PHCC'),

('LTT6148', 'BS11', '16-06-2021', 'Ca ngày', 'P001'),
('LTT6149', 'BS12', '16-06-2021', 'Ca ngày', 'P002'),
('LTT6150', 'BS13', '16-06-2021', 'Ca ngày', 'P003'),
('LTT6151', 'BS14', '16-06-2021', 'Ca ngày', 'P004'),
('LTT6152', 'BS15', '16-06-2021', 'Ca ngày', 'P005'), 
('LTT6153', 'BS16', '16-06-2021', 'Ca ngày', 'P006'),
('LTT6154', 'BS17', '16-06-2021', 'Ca ngày', 'P007'),
('LTT6155', 'BS18', '16-06-2021', 'Ca ngày', 'P008'), 
('LTT6156', 'BS19', '16-06-2021', 'Ca ngày', 'P009'),
('LTT6157', 'BS10', '16-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6158', 'BS20', '16-06-2021', 'Ca đêm', 'PHCC'),

('LTT6159', 'BS21', '17-06-2021', 'Ca ngày', 'P001'),
('LTT6160', 'BS22', '17-06-2021', 'Ca ngày', 'P002'),
('LTT6161', 'BS23', '17-06-2021', 'Ca ngày', 'P003'),
('LTT6162', 'BS24', '17-06-2021', 'Ca ngày', 'P004'),
('LTT6163', 'BS25', '17-06-2021', 'Ca ngày', 'P005'), 
('LTT6164', 'BS26', '17-06-2021', 'Ca ngày', 'P006'),
('LTT6165', 'BS27', '17-06-2021', 'Ca ngày', 'P007'),
('LTT6166', 'BS28', '17-06-2021', 'Ca ngày', 'P008'), 
('LTT6167', 'BS29', '17-06-2021', 'Ca ngày', 'P009'),
('LTT6168', 'BS30', '17-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6169', 'BS10', '17-06-2021', 'Ca đêm', 'PHCC'),

('LTT6170', 'BS01', '18-06-2021', 'Ca ngày', 'P001'),
('LTT6171', 'BS02', '18-06-2021', 'Ca ngày', 'P002'),
('LTT6172', 'BS03', '18-06-2021', 'Ca ngày', 'P003'),
('LTT6173', 'BS04', '18-06-2021', 'Ca ngày', 'P004'),
('LTT6174', 'BS05', '18-06-2021', 'Ca ngày', 'P005'), 
('LTT6175', 'BS06', '18-06-2021', 'Ca ngày', 'P006'),
('LTT6176', 'BS07', '18-06-2021', 'Ca ngày', 'P007'),
('LTT6177', 'BS08', '18-06-2021', 'Ca ngày', 'P008'), 
('LTT6178', 'BS09', '18-06-2021', 'Ca ngày', 'P009'),
('LTT6179', 'BS20', '18-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6180', 'BS30', '18-06-2021', 'Ca đêm', 'PHCC'),

('LTT6181', 'BS11', '19-06-2021', 'Ca ngày', 'P001'),
('LTT6182', 'BS12', '19-06-2021', 'Ca ngày', 'P002'),
('LTT6183', 'BS13', '19-06-2021', 'Ca ngày', 'P003'),
('LTT6184', 'BS14', '19-06-2021', 'Ca ngày', 'P004'),
('LTT6185', 'BS15', '19-06-2021', 'Ca ngày', 'P005'), 
('LTT6186', 'BS16', '19-06-2021', 'Ca ngày', 'P006'),
('LTT6187', 'BS17', '19-06-2021', 'Ca ngày', 'P007'),
('LTT6188', 'BS18', '19-06-2021', 'Ca ngày', 'P008'), 
('LTT6189', 'BS19', '19-06-2021', 'Ca ngày', 'P009'),
('LTT6190', 'BS10', '19-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6191', 'BS20', '19-06-2021', 'Ca đêm', 'PHCC'),

('LTT6192', 'BS30', '20-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6193', 'BS10', '20-06-2021', 'Ca đêm', 'PHCC'),

('LTT6194', 'BS21', '21-06-2021', 'Ca ngày', 'P001'),
('LTT6195', 'BS22', '21-06-2021', 'Ca ngày', 'P002'),
('LTT6196', 'BS23', '21-06-2021', 'Ca ngày', 'P003'),
('LTT6197', 'BS24', '21-06-2021', 'Ca ngày', 'P004'),
('LTT6198', 'BS25', '21-06-2021', 'Ca ngày', 'P005'), 
('LTT6199', 'BS26', '21-06-2021', 'Ca ngày', 'P006'),
('LTT6200', 'BS27', '21-06-2021', 'Ca ngày', 'P007'),
('LTT6201', 'BS28', '21-06-2021', 'Ca ngày', 'P008'), 
('LTT6202', 'BS29', '21-06-2021', 'Ca ngày', 'P009'),
('LTT6203', 'BS20', '21-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6204', 'BS30', '21-06-2021', 'Ca đêm', 'PHCC'),

('LTT6205', 'BS01', '22-06-2021', 'Ca ngày', 'P001'),
('LTT6206', 'BS02', '22-06-2021', 'Ca ngày', 'P002'),
('LTT6207', 'BS03', '22-06-2021', 'Ca ngày', 'P003'),
('LTT6208', 'BS04', '22-06-2021', 'Ca ngày', 'P004'),
('LTT6209', 'BS05', '22-06-2021', 'Ca ngày', 'P005'), 
('LTT6210', 'BS06', '22-06-2021', 'Ca ngày', 'P006'),
('LTT6211', 'BS07', '22-06-2021', 'Ca ngày', 'P007'),
('LTT6212', 'BS08', '22-06-2021', 'Ca ngày', 'P008'), 
('LTT6213', 'BS09', '22-06-2021', 'Ca ngày', 'P009'),
('LTT6214', 'BS10', '22-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6215', 'BS20', '22-06-2021', 'Ca đêm', 'PHCC'),

('LTT6216', 'BS11', '23-06-2021', 'Ca ngày', 'P001'),
('LTT6217', 'BS12', '23-06-2021', 'Ca ngày', 'P002'),
('LTT6218', 'BS13', '23-06-2021', 'Ca ngày', 'P003'),
('LTT6219', 'BS14', '23-06-2021', 'Ca ngày', 'P004'),
('LTT6220', 'BS15', '23-06-2021', 'Ca ngày', 'P005'), 
('LTT6221', 'BS16', '23-06-2021', 'Ca ngày', 'P006'),
('LTT6222', 'BS17', '23-06-2021', 'Ca ngày', 'P007'),
('LTT6223', 'BS18', '23-06-2021', 'Ca ngày', 'P008'), 
('LTT6224', 'BS19', '23-06-2021', 'Ca ngày', 'P009'),
('LTT6225', 'BS30', '23-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6226', 'BS10', '23-06-2021', 'Ca đêm', 'PHCC'),

('LTT6227', 'BS21', '24-06-2021', 'Ca ngày', 'P001'),
('LTT6228', 'BS22', '24-06-2021', 'Ca ngày', 'P002'),
('LTT6229', 'BS23', '24-06-2021', 'Ca ngày', 'P003'),
('LTT6230', 'BS24', '24-06-2021', 'Ca ngày', 'P004'),
('LTT6231', 'BS25', '24-06-2021', 'Ca ngày', 'P005'), 
('LTT6232', 'BS26', '24-06-2021', 'Ca ngày', 'P006'),
('LTT6233', 'BS27', '24-06-2021', 'Ca ngày', 'P007'),
('LTT6234', 'BS28', '24-06-2021', 'Ca ngày', 'P008'), 
('LTT6235', 'BS29', '24-06-2021', 'Ca ngày', 'P009'),
('LTT6236', 'BS20', '24-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6237', 'BS30', '24-06-2021', 'Ca đêm', 'PHCC'),

('LTT6238', 'BS01', '25-06-2021', 'Ca ngày', 'P001'),
('LTT6239', 'BS02', '25-06-2021', 'Ca ngày', 'P002'),
('LTT6240', 'BS03', '25-06-2021', 'Ca ngày', 'P003'),
('LTT6241', 'BS04', '25-06-2021', 'Ca ngày', 'P004'),
('LTT6242', 'BS05', '25-06-2021', 'Ca ngày', 'P005'), 
('LTT6243', 'BS06', '25-06-2021', 'Ca ngày', 'P006'),
('LTT6244', 'BS07', '25-06-2021', 'Ca ngày', 'P007'),
('LTT6245', 'BS08', '25-06-2021', 'Ca ngày', 'P008'), 
('LTT6246', 'BS09', '25-06-2021', 'Ca ngày', 'P009'),
('LTT6247', 'BS10', '25-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6248', 'BS20', '25-06-2021', 'Ca đêm', 'PHCC'),

('LTT6249', 'BS11', '26-06-2021', 'Ca ngày', 'P001'),
('LTT6250', 'BS12', '26-06-2021', 'Ca ngày', 'P002'),
('LTT6251', 'BS13', '26-06-2021', 'Ca ngày', 'P003'),
('LTT6252', 'BS14', '26-06-2021', 'Ca ngày', 'P004'),
('LTT6253', 'BS15', '26-06-2021', 'Ca ngày', 'P005'), 
('LTT6254', 'BS16', '26-06-2021', 'Ca ngày', 'P006'),
('LTT6255', 'BS17', '26-06-2021', 'Ca ngày', 'P007'),
('LTT6256', 'BS18', '26-06-2021', 'Ca ngày', 'P008'), 
('LTT6257', 'BS19', '26-06-2021', 'Ca ngày', 'P009'),
('LTT6258', 'BS30', '26-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6259', 'BS10', '26-06-2021', 'Ca đêm', 'PHCC'),

('LTT6260', 'BS20', '27-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6261', 'BS30', '27-06-2021', 'Ca đêm', 'PHCC'),

('LTT6262', 'BS21', '28-06-2021', 'Ca ngày', 'P001'),
('LTT6263', 'BS22', '28-06-2021', 'Ca ngày', 'P002'),
('LTT6264', 'BS23', '28-06-2021', 'Ca ngày', 'P003'),
('LTT6265', 'BS24', '28-06-2021', 'Ca ngày', 'P004'),
('LTT6266', 'BS25', '28-06-2021', 'Ca ngày', 'P005'), 
('LTT6267', 'BS26', '28-06-2021', 'Ca ngày', 'P006'),
('LTT6268', 'BS27', '28-06-2021', 'Ca ngày', 'P007'),
('LTT6269', 'BS28', '28-06-2021', 'Ca ngày', 'P008'), 
('LTT6270', 'BS29', '28-06-2021', 'Ca ngày', 'P009'),
('LTT6271', 'BS10', '28-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6272', 'BS20', '28-06-2021', 'Ca đêm', 'PHCC'),

('LTT6273', 'BS01', '29-06-2021', 'Ca ngày', 'P001'),
('LTT6274', 'BS02', '29-06-2021', 'Ca ngày', 'P002'),
('LTT6275', 'BS03', '29-06-2021', 'Ca ngày', 'P003'),
('LTT6276', 'BS04', '29-06-2021', 'Ca ngày', 'P004'),
('LTT6277', 'BS05', '29-06-2021', 'Ca ngày', 'P005'), 
('LTT6278', 'BS06', '29-06-2021', 'Ca ngày', 'P006'),
('LTT6279', 'BS07', '29-06-2021', 'Ca ngày', 'P007'),
('LTT6280', 'BS08', '29-06-2021', 'Ca ngày', 'P008'), 
('LTT6281', 'BS09', '29-06-2021', 'Ca ngày', 'P009'),
('LTT6282', 'BS30', '29-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6283', 'BS10', '29-06-2021', 'Ca đêm', 'PHCC'),

('LTT6284', 'BS11', '30-06-2021', 'Ca ngày', 'P001'),
('LTT6285', 'BS12', '30-06-2021', 'Ca ngày', 'P002'),
('LTT6286', 'BS13', '30-06-2021', 'Ca ngày', 'P003'),
('LTT6287', 'BS14', '30-06-2021', 'Ca ngày', 'P004'),
('LTT6288', 'BS15', '30-06-2021', 'Ca ngày', 'P005'), 
('LTT6289', 'BS16', '30-06-2021', 'Ca ngày', 'P006'),
('LTT6290', 'BS17', '30-06-2021', 'Ca ngày', 'P007'),
('LTT6291', 'BS18', '30-06-2021', 'Ca ngày', 'P008'), 
('LTT6292', 'BS19', '30-06-2021', 'Ca ngày', 'P009'),
('LTT6293', 'BS20', '30-06-2021', 'Ca ngày', 'PHCC'), 
('LTT6294', 'BS30', '30-06-2021', 'Ca đêm', 'PHCC');