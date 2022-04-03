CREATE TABLE Users
(UserID varchar2(25) PRIMARY KEY,
AlamatEmail varchar2(99) not null,
NomorHP varchar2(13) not null); 

CREATE TABLE Buyer
(UserID varchar2(25) PRIMARY KEY,
NamaDepan varchar2(25) not null,
NamaBelakang varchar2(25) not null,
Gender char(1) not null,
CONSTRAINT FK_UserID FOREIGN KEY (UserID)
REFERENCES Users(UserID));

CREATE TABLE Seller
(UserID varchar2(25) PRIMARY KEY,
NamaToko varchar2(25) not null,
NamaJalan varchar2(99) not null,
Kota varchar2(25) not null,
Provinsi varchar2(25) not null,
KodePos char(5) not null,
CONSTRAINT FK_UserID_1 FOREIGN KEY (UserID)
REFERENCES Users(UserID));

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Barang
(BarangID char(10) PRIMARY KEY,
NamaBarang varchar2(25) not null,
Deskripsi varchar2(1000) not null,
Harga number(19) check (Harga > 0) not null,
Stok number(10) check (Stok > 0) not null);

CREATE TABLE Menjual_Dijual
(UserID varchar2(25),
BarangID char(10),
RecordBarangYgSama varchar2(1000) not null,
CONSTRAINT FK_UserID_2 FOREIGN KEY (UserID)
REFERENCES Users(UserID),
CONSTRAINT FK_BarangID FOREIGN KEY (BarangID)
REFERENCES Barang(BarangID));

CREATE TABLE Data_Pembayaran
(OrderID char(10) PRIMARY KEY, 
HargaBarang number(19) check (HargaBarang > 0) not null,
Ongkir number(10) check (Ongkir > 0) not null,
NamaBankTujuan varchar2(25) not null,
RekeningTujuan varchar2(25) not null,
BankRekeningPengirim varchar2(25) not null);

CREATE TABLE Transaksi
(TransaksiID char(10) PRIMARY KEY,
OrderID char(10),
BarangID char(10),
UserID varchar2(25),
TotalNilai number(19) check (TotalNilai > 0) not null,
KodePembayaran char(10) not null,
Provinsi varchar2(100) not null,
Kota varchar2(100) not null,
NamaJalan varchar2(100) not null,
Tipe varchar2(100) not null,
Berat number(10) check (Berat > 0) not null,
Kondisi varchar2(5) not null,
StatusTransaksi varchar2(30) not null,
CONSTRAINT FK_OrderID FOREIGN KEY (OrderID)
REFERENCES Data_Pembayaran(OrderID),
CONSTRAINT FK_BarangID_1 FOREIGN KEY (BarangID)
REFERENCES Barang(BarangID),
CONSTRAINT FK_UserID_3 FOREIGN KEY (UserID)
REFERENCES Users(UserID));

-- Users
INSERT INTO Users
(UserID, AlamatEmail, NomorHP)
VALUES
('LusiusCS', 'LusiusCS@email.com', '08123456789');

INSERT INTO Users
(UserID, AlamatEmail, NomorHP)
VALUES
('Abloo', 'Abloo@email.com', '08696969691');

INSERT INTO Users
(UserID, AlamatEmail, NomorHP)
VALUES
('CilokGoreng', 'CilokGoreng@email.com', '08142042072');

INSERT INTO Users
(UserID, AlamatEmail, NomorHP)
VALUES
('TahuBulat', 'TahuBulat@email.com', '08157042069');

INSERT INTO Users
(UserID, AlamatEmail, NomorHP)
VALUES
('CirengAyam', 'CirengAyam@email.com', '08157042062');

-- 500 USERS
INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS0', '0LusiusCS@email.com', '081234567890');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS1', '1LusiusCS@email.com', '081234567891');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS2', '2LusiusCS@email.com', '081234567892');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS3', '3LusiusCS@email.com', '081234567893');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS4', '4LusiusCS@email.com', '081234567894');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS5', '5LusiusCS@email.com', '081234567895');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS6', '6LusiusCS@email.com', '081234567896');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS7', '7LusiusCS@email.com', '081234567897');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS8', '8LusiusCS@email.com', '081234567898');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS9', '9LusiusCS@email.com', '081234567899');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS10', '10LusiusCS@email.com', '0812345678910');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS11', '11LusiusCS@email.com', '0812345678911');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS12', '12LusiusCS@email.com', '0812345678912');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS13', '13LusiusCS@email.com', '0812345678913');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS14', '14LusiusCS@email.com', '0812345678914');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS15', '15LusiusCS@email.com', '0812345678915');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS16', '16LusiusCS@email.com', '0812345678916');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS17', '17LusiusCS@email.com', '0812345678917');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS18', '18LusiusCS@email.com', '0812345678918');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS19', '19LusiusCS@email.com', '0812345678919');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS20', '20LusiusCS@email.com', '0812345678920');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS21', '21LusiusCS@email.com', '0812345678921');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS22', '22LusiusCS@email.com', '0812345678922');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS23', '23LusiusCS@email.com', '0812345678923');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS24', '24LusiusCS@email.com', '0812345678924');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS25', '25LusiusCS@email.com', '0812345678925');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS26', '26LusiusCS@email.com', '0812345678926');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS27', '27LusiusCS@email.com', '0812345678927');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS28', '28LusiusCS@email.com', '0812345678928');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS29', '29LusiusCS@email.com', '0812345678929');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS30', '30LusiusCS@email.com', '0812345678930');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS31', '31LusiusCS@email.com', '0812345678931');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS32', '32LusiusCS@email.com', '0812345678932');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS33', '33LusiusCS@email.com', '0812345678933');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS34', '34LusiusCS@email.com', '0812345678934');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS35', '35LusiusCS@email.com', '0812345678935');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS36', '36LusiusCS@email.com', '0812345678936');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS37', '37LusiusCS@email.com', '0812345678937');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS38', '38LusiusCS@email.com', '0812345678938');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS39', '39LusiusCS@email.com', '0812345678939');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS40', '40LusiusCS@email.com', '0812345678940');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS41', '41LusiusCS@email.com', '0812345678941');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS42', '42LusiusCS@email.com', '0812345678942');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS43', '43LusiusCS@email.com', '0812345678943');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS44', '44LusiusCS@email.com', '0812345678944');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS45', '45LusiusCS@email.com', '0812345678945');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS46', '46LusiusCS@email.com', '0812345678946');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS47', '47LusiusCS@email.com', '0812345678947');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS48', '48LusiusCS@email.com', '0812345678948');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS49', '49LusiusCS@email.com', '0812345678949');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS50', '50LusiusCS@email.com', '0812345678950');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS51', '51LusiusCS@email.com', '0812345678951');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS52', '52LusiusCS@email.com', '0812345678952');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS53', '53LusiusCS@email.com', '0812345678953');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS54', '54LusiusCS@email.com', '0812345678954');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS55', '55LusiusCS@email.com', '0812345678955');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS56', '56LusiusCS@email.com', '0812345678956');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS57', '57LusiusCS@email.com', '0812345678957');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS58', '58LusiusCS@email.com', '0812345678958');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS59', '59LusiusCS@email.com', '0812345678959');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS60', '60LusiusCS@email.com', '0812345678960');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS61', '61LusiusCS@email.com', '0812345678961');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS62', '62LusiusCS@email.com', '0812345678962');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS63', '63LusiusCS@email.com', '0812345678963');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS64', '64LusiusCS@email.com', '0812345678964');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS65', '65LusiusCS@email.com', '0812345678965');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS66', '66LusiusCS@email.com', '0812345678966');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS67', '67LusiusCS@email.com', '0812345678967');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS68', '68LusiusCS@email.com', '0812345678968');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS69', '69LusiusCS@email.com', '0812345678969');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS70', '70LusiusCS@email.com', '0812345678970');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS71', '71LusiusCS@email.com', '0812345678971');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS72', '72LusiusCS@email.com', '0812345678972');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS73', '73LusiusCS@email.com', '0812345678973');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS74', '74LusiusCS@email.com', '0812345678974');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS75', '75LusiusCS@email.com', '0812345678975');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS76', '76LusiusCS@email.com', '0812345678976');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS77', '77LusiusCS@email.com', '0812345678977');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS78', '78LusiusCS@email.com', '0812345678978');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS79', '79LusiusCS@email.com', '0812345678979');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS80', '80LusiusCS@email.com', '0812345678980');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS81', '81LusiusCS@email.com', '0812345678981');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS82', '82LusiusCS@email.com', '0812345678982');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS83', '83LusiusCS@email.com', '0812345678983');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS84', '84LusiusCS@email.com', '0812345678984');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS85', '85LusiusCS@email.com', '0812345678985');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS86', '86LusiusCS@email.com', '0812345678986');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS87', '87LusiusCS@email.com', '0812345678987');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS88', '88LusiusCS@email.com', '0812345678988');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS89', '89LusiusCS@email.com', '0812345678989');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS90', '90LusiusCS@email.com', '0812345678990');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS91', '91LusiusCS@email.com', '0812345678991');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS92', '92LusiusCS@email.com', '0812345678992');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS93', '93LusiusCS@email.com', '0812345678993');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS94', '94LusiusCS@email.com', '0812345678994');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS95', '95LusiusCS@email.com', '0812345678995');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS96', '96LusiusCS@email.com', '0812345678996');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS97', '97LusiusCS@email.com', '0812345678997');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS98', '98LusiusCS@email.com', '0812345678998');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS99', '99LusiusCS@email.com', '0812345678999');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS100', '100LusiusCS@email.com', '08123456789100');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS101', '101LusiusCS@email.com', '08123456789101');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS102', '102LusiusCS@email.com', '08123456789102');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS103', '103LusiusCS@email.com', '08123456789103');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS104', '104LusiusCS@email.com', '08123456789104');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS105', '105LusiusCS@email.com', '08123456789105');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS106', '106LusiusCS@email.com', '08123456789106');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS107', '107LusiusCS@email.com', '08123456789107');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS108', '108LusiusCS@email.com', '08123456789108');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS109', '109LusiusCS@email.com', '08123456789109');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS110', '110LusiusCS@email.com', '08123456789110');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS111', '111LusiusCS@email.com', '08123456789111');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS112', '112LusiusCS@email.com', '08123456789112');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS113', '113LusiusCS@email.com', '08123456789113');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS114', '114LusiusCS@email.com', '08123456789114');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS115', '115LusiusCS@email.com', '08123456789115');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS116', '116LusiusCS@email.com', '08123456789116');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS117', '117LusiusCS@email.com', '08123456789117');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS118', '118LusiusCS@email.com', '08123456789118');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS119', '119LusiusCS@email.com', '08123456789119');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS120', '120LusiusCS@email.com', '08123456789120');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS121', '121LusiusCS@email.com', '08123456789121');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS122', '122LusiusCS@email.com', '08123456789122');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS123', '123LusiusCS@email.com', '08123456789123');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS124', '124LusiusCS@email.com', '08123456789124');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS125', '125LusiusCS@email.com', '08123456789125');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS126', '126LusiusCS@email.com', '08123456789126');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS127', '127LusiusCS@email.com', '08123456789127');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS128', '128LusiusCS@email.com', '08123456789128');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS129', '129LusiusCS@email.com', '08123456789129');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS130', '130LusiusCS@email.com', '08123456789130');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS131', '131LusiusCS@email.com', '08123456789131');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS132', '132LusiusCS@email.com', '08123456789132');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS133', '133LusiusCS@email.com', '08123456789133');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS134', '134LusiusCS@email.com', '08123456789134');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS135', '135LusiusCS@email.com', '08123456789135');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS136', '136LusiusCS@email.com', '08123456789136');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS137', '137LusiusCS@email.com', '08123456789137');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS138', '138LusiusCS@email.com', '08123456789138');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS139', '139LusiusCS@email.com', '08123456789139');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS140', '140LusiusCS@email.com', '08123456789140');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS141', '141LusiusCS@email.com', '08123456789141');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS142', '142LusiusCS@email.com', '08123456789142');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS143', '143LusiusCS@email.com', '08123456789143');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS144', '144LusiusCS@email.com', '08123456789144');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS145', '145LusiusCS@email.com', '08123456789145');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS146', '146LusiusCS@email.com', '08123456789146');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS147', '147LusiusCS@email.com', '08123456789147');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS148', '148LusiusCS@email.com', '08123456789148');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS149', '149LusiusCS@email.com', '08123456789149');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS150', '150LusiusCS@email.com', '08123456789150');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS151', '151LusiusCS@email.com', '08123456789151');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS152', '152LusiusCS@email.com', '08123456789152');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS153', '153LusiusCS@email.com', '08123456789153');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS154', '154LusiusCS@email.com', '08123456789154');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS155', '155LusiusCS@email.com', '08123456789155');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS156', '156LusiusCS@email.com', '08123456789156');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS157', '157LusiusCS@email.com', '08123456789157');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS158', '158LusiusCS@email.com', '08123456789158');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS159', '159LusiusCS@email.com', '08123456789159');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS160', '160LusiusCS@email.com', '08123456789160');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS161', '161LusiusCS@email.com', '08123456789161');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS162', '162LusiusCS@email.com', '08123456789162');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS163', '163LusiusCS@email.com', '08123456789163');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS164', '164LusiusCS@email.com', '08123456789164');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS165', '165LusiusCS@email.com', '08123456789165');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS166', '166LusiusCS@email.com', '08123456789166');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS167', '167LusiusCS@email.com', '08123456789167');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS168', '168LusiusCS@email.com', '08123456789168');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS169', '169LusiusCS@email.com', '08123456789169');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS170', '170LusiusCS@email.com', '08123456789170');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS171', '171LusiusCS@email.com', '08123456789171');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS172', '172LusiusCS@email.com', '08123456789172');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS173', '173LusiusCS@email.com', '08123456789173');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS174', '174LusiusCS@email.com', '08123456789174');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS175', '175LusiusCS@email.com', '08123456789175');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS176', '176LusiusCS@email.com', '08123456789176');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS177', '177LusiusCS@email.com', '08123456789177');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS178', '178LusiusCS@email.com', '08123456789178');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS179', '179LusiusCS@email.com', '08123456789179');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS180', '180LusiusCS@email.com', '08123456789180');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS181', '181LusiusCS@email.com', '08123456789181');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS182', '182LusiusCS@email.com', '08123456789182');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS183', '183LusiusCS@email.com', '08123456789183');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS184', '184LusiusCS@email.com', '08123456789184');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS185', '185LusiusCS@email.com', '08123456789185');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS186', '186LusiusCS@email.com', '08123456789186');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS187', '187LusiusCS@email.com', '08123456789187');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS188', '188LusiusCS@email.com', '08123456789188');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS189', '189LusiusCS@email.com', '08123456789189');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS190', '190LusiusCS@email.com', '08123456789190');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS191', '191LusiusCS@email.com', '08123456789191');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS192', '192LusiusCS@email.com', '08123456789192');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS193', '193LusiusCS@email.com', '08123456789193');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS194', '194LusiusCS@email.com', '08123456789194');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS195', '195LusiusCS@email.com', '08123456789195');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS196', '196LusiusCS@email.com', '08123456789196');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS197', '197LusiusCS@email.com', '08123456789197');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS198', '198LusiusCS@email.com', '08123456789198');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS199', '199LusiusCS@email.com', '08123456789199');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS200', '200LusiusCS@email.com', '08123456789200');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS201', '201LusiusCS@email.com', '08123456789201');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS202', '202LusiusCS@email.com', '08123456789202');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS203', '203LusiusCS@email.com', '08123456789203');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS204', '204LusiusCS@email.com', '08123456789204');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS205', '205LusiusCS@email.com', '08123456789205');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS206', '206LusiusCS@email.com', '08123456789206');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS207', '207LusiusCS@email.com', '08123456789207');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS208', '208LusiusCS@email.com', '08123456789208');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS209', '209LusiusCS@email.com', '08123456789209');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS210', '210LusiusCS@email.com', '08123456789210');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS211', '211LusiusCS@email.com', '08123456789211');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS212', '212LusiusCS@email.com', '08123456789212');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS213', '213LusiusCS@email.com', '08123456789213');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS214', '214LusiusCS@email.com', '08123456789214');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS215', '215LusiusCS@email.com', '08123456789215');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS216', '216LusiusCS@email.com', '08123456789216');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS217', '217LusiusCS@email.com', '08123456789217');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS218', '218LusiusCS@email.com', '08123456789218');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS219', '219LusiusCS@email.com', '08123456789219');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS220', '220LusiusCS@email.com', '08123456789220');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS221', '221LusiusCS@email.com', '08123456789221');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS222', '222LusiusCS@email.com', '08123456789222');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS223', '223LusiusCS@email.com', '08123456789223');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS224', '224LusiusCS@email.com', '08123456789224');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS225', '225LusiusCS@email.com', '08123456789225');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS226', '226LusiusCS@email.com', '08123456789226');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS227', '227LusiusCS@email.com', '08123456789227');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS228', '228LusiusCS@email.com', '08123456789228');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS229', '229LusiusCS@email.com', '08123456789229');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS230', '230LusiusCS@email.com', '08123456789230');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS231', '231LusiusCS@email.com', '08123456789231');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS232', '232LusiusCS@email.com', '08123456789232');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS233', '233LusiusCS@email.com', '08123456789233');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS234', '234LusiusCS@email.com', '08123456789234');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS235', '235LusiusCS@email.com', '08123456789235');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS236', '236LusiusCS@email.com', '08123456789236');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS237', '237LusiusCS@email.com', '08123456789237');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS238', '238LusiusCS@email.com', '08123456789238');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS239', '239LusiusCS@email.com', '08123456789239');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS240', '240LusiusCS@email.com', '08123456789240');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS241', '241LusiusCS@email.com', '08123456789241');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS242', '242LusiusCS@email.com', '08123456789242');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS243', '243LusiusCS@email.com', '08123456789243');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS244', '244LusiusCS@email.com', '08123456789244');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS245', '245LusiusCS@email.com', '08123456789245');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS246', '246LusiusCS@email.com', '08123456789246');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS247', '247LusiusCS@email.com', '08123456789247');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS248', '248LusiusCS@email.com', '08123456789248');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS249', '249LusiusCS@email.com', '08123456789249');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS250', '250LusiusCS@email.com', '08123456789250');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS251', '251LusiusCS@email.com', '08123456789251');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS252', '252LusiusCS@email.com', '08123456789252');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS253', '253LusiusCS@email.com', '08123456789253');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS254', '254LusiusCS@email.com', '08123456789254');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS255', '255LusiusCS@email.com', '08123456789255');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS256', '256LusiusCS@email.com', '08123456789256');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS257', '257LusiusCS@email.com', '08123456789257');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS258', '258LusiusCS@email.com', '08123456789258');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS259', '259LusiusCS@email.com', '08123456789259');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS260', '260LusiusCS@email.com', '08123456789260');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS261', '261LusiusCS@email.com', '08123456789261');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS262', '262LusiusCS@email.com', '08123456789262');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS263', '263LusiusCS@email.com', '08123456789263');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS264', '264LusiusCS@email.com', '08123456789264');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS265', '265LusiusCS@email.com', '08123456789265');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS266', '266LusiusCS@email.com', '08123456789266');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS267', '267LusiusCS@email.com', '08123456789267');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS268', '268LusiusCS@email.com', '08123456789268');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS269', '269LusiusCS@email.com', '08123456789269');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS270', '270LusiusCS@email.com', '08123456789270');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS271', '271LusiusCS@email.com', '08123456789271');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS272', '272LusiusCS@email.com', '08123456789272');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS273', '273LusiusCS@email.com', '08123456789273');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS274', '274LusiusCS@email.com', '08123456789274');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS275', '275LusiusCS@email.com', '08123456789275');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS276', '276LusiusCS@email.com', '08123456789276');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS277', '277LusiusCS@email.com', '08123456789277');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS278', '278LusiusCS@email.com', '08123456789278');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS279', '279LusiusCS@email.com', '08123456789279');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS280', '280LusiusCS@email.com', '08123456789280');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS281', '281LusiusCS@email.com', '08123456789281');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS282', '282LusiusCS@email.com', '08123456789282');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS283', '283LusiusCS@email.com', '08123456789283');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS284', '284LusiusCS@email.com', '08123456789284');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS285', '285LusiusCS@email.com', '08123456789285');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS286', '286LusiusCS@email.com', '08123456789286');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS287', '287LusiusCS@email.com', '08123456789287');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS288', '288LusiusCS@email.com', '08123456789288');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS289', '289LusiusCS@email.com', '08123456789289');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS290', '290LusiusCS@email.com', '08123456789290');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS291', '291LusiusCS@email.com', '08123456789291');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS292', '292LusiusCS@email.com', '08123456789292');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS293', '293LusiusCS@email.com', '08123456789293');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS294', '294LusiusCS@email.com', '08123456789294');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS295', '295LusiusCS@email.com', '08123456789295');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS296', '296LusiusCS@email.com', '08123456789296');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS297', '297LusiusCS@email.com', '08123456789297');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS298', '298LusiusCS@email.com', '08123456789298');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS299', '299LusiusCS@email.com', '08123456789299');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS300', '300LusiusCS@email.com', '08123456789300');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS301', '301LusiusCS@email.com', '08123456789301');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS302', '302LusiusCS@email.com', '08123456789302');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS303', '303LusiusCS@email.com', '08123456789303');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS304', '304LusiusCS@email.com', '08123456789304');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS305', '305LusiusCS@email.com', '08123456789305');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS306', '306LusiusCS@email.com', '08123456789306');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS307', '307LusiusCS@email.com', '08123456789307');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS308', '308LusiusCS@email.com', '08123456789308');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS309', '309LusiusCS@email.com', '08123456789309');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS310', '310LusiusCS@email.com', '08123456789310');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS311', '311LusiusCS@email.com', '08123456789311');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS312', '312LusiusCS@email.com', '08123456789312');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS313', '313LusiusCS@email.com', '08123456789313');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS314', '314LusiusCS@email.com', '08123456789314');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS315', '315LusiusCS@email.com', '08123456789315');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS316', '316LusiusCS@email.com', '08123456789316');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS317', '317LusiusCS@email.com', '08123456789317');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS318', '318LusiusCS@email.com', '08123456789318');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS319', '319LusiusCS@email.com', '08123456789319');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS320', '320LusiusCS@email.com', '08123456789320');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS321', '321LusiusCS@email.com', '08123456789321');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS322', '322LusiusCS@email.com', '08123456789322');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS323', '323LusiusCS@email.com', '08123456789323');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS324', '324LusiusCS@email.com', '08123456789324');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS325', '325LusiusCS@email.com', '08123456789325');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS326', '326LusiusCS@email.com', '08123456789326');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS327', '327LusiusCS@email.com', '08123456789327');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS328', '328LusiusCS@email.com', '08123456789328');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS329', '329LusiusCS@email.com', '08123456789329');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS330', '330LusiusCS@email.com', '08123456789330');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS331', '331LusiusCS@email.com', '08123456789331');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS332', '332LusiusCS@email.com', '08123456789332');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS333', '333LusiusCS@email.com', '08123456789333');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS334', '334LusiusCS@email.com', '08123456789334');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS335', '335LusiusCS@email.com', '08123456789335');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS336', '336LusiusCS@email.com', '08123456789336');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS337', '337LusiusCS@email.com', '08123456789337');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS338', '338LusiusCS@email.com', '08123456789338');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS339', '339LusiusCS@email.com', '08123456789339');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS340', '340LusiusCS@email.com', '08123456789340');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS341', '341LusiusCS@email.com', '08123456789341');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS342', '342LusiusCS@email.com', '08123456789342');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS343', '343LusiusCS@email.com', '08123456789343');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS344', '344LusiusCS@email.com', '08123456789344');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS345', '345LusiusCS@email.com', '08123456789345');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS346', '346LusiusCS@email.com', '08123456789346');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS347', '347LusiusCS@email.com', '08123456789347');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS348', '348LusiusCS@email.com', '08123456789348');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS349', '349LusiusCS@email.com', '08123456789349');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS350', '350LusiusCS@email.com', '08123456789350');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS351', '351LusiusCS@email.com', '08123456789351');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS352', '352LusiusCS@email.com', '08123456789352');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS353', '353LusiusCS@email.com', '08123456789353');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS354', '354LusiusCS@email.com', '08123456789354');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS355', '355LusiusCS@email.com', '08123456789355');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS356', '356LusiusCS@email.com', '08123456789356');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS357', '357LusiusCS@email.com', '08123456789357');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS358', '358LusiusCS@email.com', '08123456789358');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS359', '359LusiusCS@email.com', '08123456789359');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS360', '360LusiusCS@email.com', '08123456789360');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS361', '361LusiusCS@email.com', '08123456789361');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS362', '362LusiusCS@email.com', '08123456789362');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS363', '363LusiusCS@email.com', '08123456789363');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS364', '364LusiusCS@email.com', '08123456789364');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS365', '365LusiusCS@email.com', '08123456789365');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS366', '366LusiusCS@email.com', '08123456789366');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS367', '367LusiusCS@email.com', '08123456789367');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS368', '368LusiusCS@email.com', '08123456789368');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS369', '369LusiusCS@email.com', '08123456789369');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS370', '370LusiusCS@email.com', '08123456789370');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS371', '371LusiusCS@email.com', '08123456789371');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS372', '372LusiusCS@email.com', '08123456789372');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS373', '373LusiusCS@email.com', '08123456789373');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS374', '374LusiusCS@email.com', '08123456789374');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS375', '375LusiusCS@email.com', '08123456789375');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS376', '376LusiusCS@email.com', '08123456789376');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS377', '377LusiusCS@email.com', '08123456789377');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS378', '378LusiusCS@email.com', '08123456789378');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS379', '379LusiusCS@email.com', '08123456789379');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS380', '380LusiusCS@email.com', '08123456789380');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS381', '381LusiusCS@email.com', '08123456789381');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS382', '382LusiusCS@email.com', '08123456789382');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS383', '383LusiusCS@email.com', '08123456789383');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS384', '384LusiusCS@email.com', '08123456789384');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS385', '385LusiusCS@email.com', '08123456789385');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS386', '386LusiusCS@email.com', '08123456789386');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS387', '387LusiusCS@email.com', '08123456789387');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS388', '388LusiusCS@email.com', '08123456789388');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS389', '389LusiusCS@email.com', '08123456789389');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS390', '390LusiusCS@email.com', '08123456789390');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS391', '391LusiusCS@email.com', '08123456789391');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS392', '392LusiusCS@email.com', '08123456789392');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS393', '393LusiusCS@email.com', '08123456789393');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS394', '394LusiusCS@email.com', '08123456789394');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS395', '395LusiusCS@email.com', '08123456789395');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS396', '396LusiusCS@email.com', '08123456789396');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS397', '397LusiusCS@email.com', '08123456789397');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS398', '398LusiusCS@email.com', '08123456789398');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS399', '399LusiusCS@email.com', '08123456789399');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS400', '400LusiusCS@email.com', '08123456789400');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS401', '401LusiusCS@email.com', '08123456789401');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS402', '402LusiusCS@email.com', '08123456789402');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS403', '403LusiusCS@email.com', '08123456789403');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS404', '404LusiusCS@email.com', '08123456789404');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS405', '405LusiusCS@email.com', '08123456789405');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS406', '406LusiusCS@email.com', '08123456789406');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS407', '407LusiusCS@email.com', '08123456789407');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS408', '408LusiusCS@email.com', '08123456789408');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS409', '409LusiusCS@email.com', '08123456789409');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS410', '410LusiusCS@email.com', '08123456789410');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS411', '411LusiusCS@email.com', '08123456789411');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS412', '412LusiusCS@email.com', '08123456789412');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS413', '413LusiusCS@email.com', '08123456789413');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS414', '414LusiusCS@email.com', '08123456789414');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS415', '415LusiusCS@email.com', '08123456789415');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS416', '416LusiusCS@email.com', '08123456789416');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS417', '417LusiusCS@email.com', '08123456789417');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS418', '418LusiusCS@email.com', '08123456789418');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS419', '419LusiusCS@email.com', '08123456789419');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS420', '420LusiusCS@email.com', '08123456789420');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS421', '421LusiusCS@email.com', '08123456789421');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS422', '422LusiusCS@email.com', '08123456789422');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS423', '423LusiusCS@email.com', '08123456789423');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS424', '424LusiusCS@email.com', '08123456789424');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS425', '425LusiusCS@email.com', '08123456789425');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS426', '426LusiusCS@email.com', '08123456789426');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS427', '427LusiusCS@email.com', '08123456789427');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS428', '428LusiusCS@email.com', '08123456789428');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS429', '429LusiusCS@email.com', '08123456789429');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS430', '430LusiusCS@email.com', '08123456789430');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS431', '431LusiusCS@email.com', '08123456789431');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS432', '432LusiusCS@email.com', '08123456789432');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS433', '433LusiusCS@email.com', '08123456789433');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS434', '434LusiusCS@email.com', '08123456789434');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS435', '435LusiusCS@email.com', '08123456789435');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS436', '436LusiusCS@email.com', '08123456789436');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS437', '437LusiusCS@email.com', '08123456789437');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS438', '438LusiusCS@email.com', '08123456789438');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS439', '439LusiusCS@email.com', '08123456789439');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS440', '440LusiusCS@email.com', '08123456789440');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS441', '441LusiusCS@email.com', '08123456789441');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS442', '442LusiusCS@email.com', '08123456789442');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS443', '443LusiusCS@email.com', '08123456789443');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS444', '444LusiusCS@email.com', '08123456789444');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS445', '445LusiusCS@email.com', '08123456789445');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS446', '446LusiusCS@email.com', '08123456789446');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS447', '447LusiusCS@email.com', '08123456789447');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS448', '448LusiusCS@email.com', '08123456789448');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS449', '449LusiusCS@email.com', '08123456789449');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS450', '450LusiusCS@email.com', '08123456789450');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS451', '451LusiusCS@email.com', '08123456789451');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS452', '452LusiusCS@email.com', '08123456789452');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS453', '453LusiusCS@email.com', '08123456789453');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS454', '454LusiusCS@email.com', '08123456789454');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS455', '455LusiusCS@email.com', '08123456789455');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS456', '456LusiusCS@email.com', '08123456789456');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS457', '457LusiusCS@email.com', '08123456789457');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS458', '458LusiusCS@email.com', '08123456789458');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS459', '459LusiusCS@email.com', '08123456789459');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS460', '460LusiusCS@email.com', '08123456789460');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS461', '461LusiusCS@email.com', '08123456789461');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS462', '462LusiusCS@email.com', '08123456789462');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS463', '463LusiusCS@email.com', '08123456789463');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS464', '464LusiusCS@email.com', '08123456789464');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS465', '465LusiusCS@email.com', '08123456789465');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS466', '466LusiusCS@email.com', '08123456789466');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS467', '467LusiusCS@email.com', '08123456789467');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS468', '468LusiusCS@email.com', '08123456789468');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS469', '469LusiusCS@email.com', '08123456789469');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS470', '470LusiusCS@email.com', '08123456789470');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS471', '471LusiusCS@email.com', '08123456789471');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS472', '472LusiusCS@email.com', '08123456789472');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS473', '473LusiusCS@email.com', '08123456789473');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS474', '474LusiusCS@email.com', '08123456789474');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS475', '475LusiusCS@email.com', '08123456789475');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS476', '476LusiusCS@email.com', '08123456789476');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS477', '477LusiusCS@email.com', '08123456789477');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS478', '478LusiusCS@email.com', '08123456789478');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS479', '479LusiusCS@email.com', '08123456789479');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS480', '480LusiusCS@email.com', '08123456789480');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS481', '481LusiusCS@email.com', '08123456789481');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS482', '482LusiusCS@email.com', '08123456789482');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS483', '483LusiusCS@email.com', '08123456789483');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS484', '484LusiusCS@email.com', '08123456789484');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS485', '485LusiusCS@email.com', '08123456789485');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS486', '486LusiusCS@email.com', '08123456789486');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS487', '487LusiusCS@email.com', '08123456789487');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS488', '488LusiusCS@email.com', '08123456789488');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS489', '489LusiusCS@email.com', '08123456789489');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS490', '490LusiusCS@email.com', '08123456789490');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS491', '491LusiusCS@email.com', '08123456789491');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS492', '492LusiusCS@email.com', '08123456789492');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS493', '493LusiusCS@email.com', '08123456789493');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS494', '494LusiusCS@email.com', '08123456789494');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS495', '495LusiusCS@email.com', '08123456789495');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS496', '496LusiusCS@email.com', '08123456789496');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS497', '497LusiusCS@email.com', '08123456789497');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS498', '498LusiusCS@email.com', '08123456789498');


INSERT INTO Users
    (UserID, AlamatEmail, NomorHP)
VALUES
    ('LusiusCS499', '499LusiusCS@email.com', '08123456789499');

-- BUYER
INSERT INTO buyer
(UserID, NamaDepan, NamaBelakang, Gender)
VALUES
('LusiusCS', 'Lusius', 'CS', 'F');

INSERT INTO buyer
(UserID, NamaDepan, NamaBelakang, Gender)
VALUES
('Abloo', 'Abloo', 'Gulugulu', 'M');

INSERT INTO buyer
(UserID, NamaDepan, NamaBelakang, Gender)
VALUES
('CilokGoreng', 'Cilok', 'Gorenk', 'M');

INSERT INTO buyer
(UserID, NamaDepan, NamaBelakang, Gender)
VALUES
('TahuBulat', 'Tahu', 'Bulet', 'F');

INSERT INTO buyer
(UserID, NamaDepan, NamaBelakang, Gender)
VALUES
('CirengAyam', 'Cireng', 'Ayam', 'F');

-- 500 BUYER
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS0', 'LusiusCSN', 'CSN', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS1', 'LusiusCSZ', 'CSZ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS2', 'LusiusCSQ', 'CSQ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS3', 'LusiusCSO', 'CSO', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS4', 'LusiusCST', 'CST', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS5', 'LusiusCSV', 'CSV', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS6', 'LusiusCSA', 'CSA', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS7', 'LusiusCSW', 'CSW', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS8', 'LusiusCSD', 'CSD', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS9', 'LusiusCSK', 'CSK', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS10', 'LusiusCST', 'CST', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS11', 'LusiusCSF', 'CSF', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS12', 'LusiusCSJ', 'CSJ', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS13', 'LusiusCSW', 'CSW', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS14', 'LusiusCSG', 'CSG', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS15', 'LusiusCSZ', 'CSZ', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS16', 'LusiusCSH', 'CSH', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS17', 'LusiusCSA', 'CSA', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS18', 'LusiusCSY', 'CSY', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS19', 'LusiusCSA', 'CSA', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS20', 'LusiusCSM', 'CSM', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS21', 'LusiusCSX', 'CSX', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS22', 'LusiusCSW', 'CSW', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS23', 'LusiusCSM', 'CSM', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS24', 'LusiusCSV', 'CSV', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS25', 'LusiusCSU', 'CSU', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS26', 'LusiusCSY', 'CSY', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS27', 'LusiusCSR', 'CSR', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS28', 'LusiusCSW', 'CSW', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS29', 'LusiusCSB', 'CSB', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS30', 'LusiusCSS', 'CSS', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS31', 'LusiusCSR', 'CSR', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS32', 'LusiusCSC', 'CSC', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS33', 'LusiusCSF', 'CSF', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS34', 'LusiusCSW', 'CSW', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS35', 'LusiusCSR', 'CSR', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS36', 'LusiusCSB', 'CSB', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS37', 'LusiusCSZ', 'CSZ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS38', 'LusiusCSA', 'CSA', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS39', 'LusiusCSJ', 'CSJ', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS40', 'LusiusCSW', 'CSW', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS41', 'LusiusCSN', 'CSN', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS42', 'LusiusCSX', 'CSX', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS43', 'LusiusCSX', 'CSX', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS44', 'LusiusCSS', 'CSS', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS45', 'LusiusCSJ', 'CSJ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS46', 'LusiusCSN', 'CSN', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS47', 'LusiusCSA', 'CSA', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS48', 'LusiusCSY', 'CSY', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS49', 'LusiusCSM', 'CSM', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS50', 'LusiusCSW', 'CSW', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS51', 'LusiusCSV', 'CSV', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS52', 'LusiusCSX', 'CSX', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS53', 'LusiusCSP', 'CSP', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS54', 'LusiusCSY', 'CSY', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS55', 'LusiusCSC', 'CSC', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS56', 'LusiusCSV', 'CSV', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS57', 'LusiusCSH', 'CSH', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS58', 'LusiusCSJ', 'CSJ', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS59', 'LusiusCSE', 'CSE', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS60', 'LusiusCSX', 'CSX', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS61', 'LusiusCSC', 'CSC', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS62', 'LusiusCST', 'CST', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS63', 'LusiusCSW', 'CSW', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS64', 'LusiusCSS', 'CSS', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS65', 'LusiusCSP', 'CSP', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS66', 'LusiusCSB', 'CSB', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS67', 'LusiusCSG', 'CSG', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS68', 'LusiusCSR', 'CSR', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS69', 'LusiusCSX', 'CSX', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS70', 'LusiusCSG', 'CSG', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS71', 'LusiusCSI', 'CSI', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS72', 'LusiusCSK', 'CSK', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS73', 'LusiusCSB', 'CSB', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS74', 'LusiusCSR', 'CSR', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS75', 'LusiusCSL', 'CSL', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS76', 'LusiusCSX', 'CSX', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS77', 'LusiusCSR', 'CSR', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS78', 'LusiusCSR', 'CSR', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS79', 'LusiusCSD', 'CSD', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS80', 'LusiusCSZ', 'CSZ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS81', 'LusiusCSD', 'CSD', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS82', 'LusiusCSE', 'CSE', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS83', 'LusiusCSI', 'CSI', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS84', 'LusiusCSL', 'CSL', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS85', 'LusiusCST', 'CST', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS86', 'LusiusCSE', 'CSE', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS87', 'LusiusCSF', 'CSF', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS88', 'LusiusCSV', 'CSV', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS89', 'LusiusCST', 'CST', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS90', 'LusiusCSL', 'CSL', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS91', 'LusiusCSY', 'CSY', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS92', 'LusiusCSQ', 'CSQ', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS93', 'LusiusCSX', 'CSX', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS94', 'LusiusCSA', 'CSA', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS95', 'LusiusCSY', 'CSY', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS96', 'LusiusCSG', 'CSG', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS97', 'LusiusCSC', 'CSC', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS98', 'LusiusCSK', 'CSK', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS99', 'LusiusCSN', 'CSN', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS100', 'LusiusCSR', 'CSR', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS101', 'LusiusCSB', 'CSB', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS102', 'LusiusCSH', 'CSH', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS103', 'LusiusCSD', 'CSD', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS104', 'LusiusCSH', 'CSH', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS105', 'LusiusCSV', 'CSV', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS106', 'LusiusCSN', 'CSN', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS107', 'LusiusCSC', 'CSC', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS108', 'LusiusCSQ', 'CSQ', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS109', 'LusiusCSK', 'CSK', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS110', 'LusiusCSB', 'CSB', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS111', 'LusiusCSD', 'CSD', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS112', 'LusiusCSY', 'CSY', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS113', 'LusiusCSG', 'CSG', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS114', 'LusiusCSC', 'CSC', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS115', 'LusiusCST', 'CST', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS116', 'LusiusCSK', 'CSK', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS117', 'LusiusCSJ', 'CSJ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS118', 'LusiusCST', 'CST', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS119', 'LusiusCSH', 'CSH', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS120', 'LusiusCSQ', 'CSQ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS121', 'LusiusCSI', 'CSI', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS122', 'LusiusCSY', 'CSY', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS123', 'LusiusCSQ', 'CSQ', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS124', 'LusiusCSC', 'CSC', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS125', 'LusiusCSW', 'CSW', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS126', 'LusiusCSR', 'CSR', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS127', 'LusiusCSV', 'CSV', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS128', 'LusiusCSG', 'CSG', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS129', 'LusiusCSY', 'CSY', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS130', 'LusiusCSJ', 'CSJ', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS131', 'LusiusCSH', 'CSH', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS132', 'LusiusCSH', 'CSH', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS133', 'LusiusCSV', 'CSV', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS134', 'LusiusCSU', 'CSU', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS135', 'LusiusCSP', 'CSP', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS136', 'LusiusCSC', 'CSC', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS137', 'LusiusCSI', 'CSI', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS138', 'LusiusCSH', 'CSH', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS139', 'LusiusCSZ', 'CSZ', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS140', 'LusiusCSY', 'CSY', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS141', 'LusiusCSA', 'CSA', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS142', 'LusiusCSH', 'CSH', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS143', 'LusiusCSA', 'CSA', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS144', 'LusiusCSE', 'CSE', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS145', 'LusiusCSX', 'CSX', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS146', 'LusiusCSM', 'CSM', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS147', 'LusiusCSB', 'CSB', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS148', 'LusiusCSO', 'CSO', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS149', 'LusiusCSK', 'CSK', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS150', 'LusiusCSM', 'CSM', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS151', 'LusiusCSB', 'CSB', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS152', 'LusiusCSQ', 'CSQ', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS153', 'LusiusCSG', 'CSG', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS154', 'LusiusCSB', 'CSB', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS155', 'LusiusCSO', 'CSO', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS156', 'LusiusCSV', 'CSV', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS157', 'LusiusCSH', 'CSH', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS158', 'LusiusCSC', 'CSC', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS159', 'LusiusCSG', 'CSG', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS160', 'LusiusCSK', 'CSK', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS161', 'LusiusCSY', 'CSY', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS162', 'LusiusCSN', 'CSN', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS163', 'LusiusCSG', 'CSG', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS164', 'LusiusCSN', 'CSN', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS165', 'LusiusCSG', 'CSG', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS166', 'LusiusCSI', 'CSI', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS167', 'LusiusCSD', 'CSD', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS168', 'LusiusCSI', 'CSI', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS169', 'LusiusCSH', 'CSH', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS170', 'LusiusCSM', 'CSM', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS171', 'LusiusCSF', 'CSF', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS172', 'LusiusCSN', 'CSN', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS173', 'LusiusCSE', 'CSE', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS174', 'LusiusCSI', 'CSI', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS175', 'LusiusCSN', 'CSN', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS176', 'LusiusCSB', 'CSB', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS177', 'LusiusCSS', 'CSS', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS178', 'LusiusCSB', 'CSB', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS179', 'LusiusCSO', 'CSO', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS180', 'LusiusCSO', 'CSO', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS181', 'LusiusCSP', 'CSP', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS182', 'LusiusCSV', 'CSV', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS183', 'LusiusCSY', 'CSY', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS184', 'LusiusCSS', 'CSS', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS185', 'LusiusCSP', 'CSP', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS186', 'LusiusCSP', 'CSP', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS187', 'LusiusCSZ', 'CSZ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS188', 'LusiusCSH', 'CSH', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS189', 'LusiusCSX', 'CSX', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS190', 'LusiusCSY', 'CSY', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS191', 'LusiusCSK', 'CSK', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS192', 'LusiusCSF', 'CSF', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS193', 'LusiusCSK', 'CSK', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS194', 'LusiusCSC', 'CSC', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS195', 'LusiusCSO', 'CSO', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS196', 'LusiusCSI', 'CSI', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS197', 'LusiusCSE', 'CSE', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS198', 'LusiusCSY', 'CSY', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS199', 'LusiusCSJ', 'CSJ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS200', 'LusiusCSW', 'CSW', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS201', 'LusiusCSW', 'CSW', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS202', 'LusiusCSN', 'CSN', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS203', 'LusiusCST', 'CST', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS204', 'LusiusCSN', 'CSN', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS205', 'LusiusCST', 'CST', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS206', 'LusiusCSI', 'CSI', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS207', 'LusiusCSO', 'CSO', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS208', 'LusiusCSA', 'CSA', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS209', 'LusiusCSR', 'CSR', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS210', 'LusiusCSR', 'CSR', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS211', 'LusiusCSW', 'CSW', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS212', 'LusiusCSP', 'CSP', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS213', 'LusiusCSR', 'CSR', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS214', 'LusiusCSJ', 'CSJ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS215', 'LusiusCSM', 'CSM', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS216', 'LusiusCSW', 'CSW', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS217', 'LusiusCST', 'CST', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS218', 'LusiusCSB', 'CSB', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS219', 'LusiusCSQ', 'CSQ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS220', 'LusiusCSQ', 'CSQ', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS221', 'LusiusCSS', 'CSS', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS222', 'LusiusCSN', 'CSN', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS223', 'LusiusCSR', 'CSR', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS224', 'LusiusCSQ', 'CSQ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS225', 'LusiusCSP', 'CSP', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS226', 'LusiusCST', 'CST', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS227', 'LusiusCSZ', 'CSZ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS228', 'LusiusCSJ', 'CSJ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS229', 'LusiusCSH', 'CSH', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS230', 'LusiusCSM', 'CSM', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS231', 'LusiusCSP', 'CSP', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS232', 'LusiusCSC', 'CSC', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS233', 'LusiusCSS', 'CSS', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS234', 'LusiusCSG', 'CSG', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS235', 'LusiusCSC', 'CSC', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS236', 'LusiusCSH', 'CSH', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS237', 'LusiusCSX', 'CSX', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS238', 'LusiusCSN', 'CSN', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS239', 'LusiusCSC', 'CSC', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS240', 'LusiusCSX', 'CSX', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS241', 'LusiusCSL', 'CSL', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS242', 'LusiusCSS', 'CSS', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS243', 'LusiusCSU', 'CSU', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS244', 'LusiusCSA', 'CSA', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS245', 'LusiusCSX', 'CSX', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS246', 'LusiusCSP', 'CSP', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS247', 'LusiusCSU', 'CSU', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS248', 'LusiusCSG', 'CSG', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS249', 'LusiusCSV', 'CSV', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS250', 'LusiusCSY', 'CSY', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS251', 'LusiusCSD', 'CSD', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS252', 'LusiusCSK', 'CSK', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS253', 'LusiusCSB', 'CSB', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS254', 'LusiusCSE', 'CSE', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS255', 'LusiusCSD', 'CSD', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS256', 'LusiusCSR', 'CSR', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS257', 'LusiusCSX', 'CSX', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS258', 'LusiusCSB', 'CSB', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS259', 'LusiusCSI', 'CSI', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS260', 'LusiusCSS', 'CSS', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS261', 'LusiusCSN', 'CSN', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS262', 'LusiusCSA', 'CSA', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS263', 'LusiusCSU', 'CSU', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS264', 'LusiusCSY', 'CSY', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS265', 'LusiusCSG', 'CSG', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS266', 'LusiusCSX', 'CSX', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS267', 'LusiusCSO', 'CSO', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS268', 'LusiusCST', 'CST', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS269', 'LusiusCSQ', 'CSQ', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS270', 'LusiusCSN', 'CSN', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS271', 'LusiusCSM', 'CSM', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS272', 'LusiusCSS', 'CSS', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS273', 'LusiusCSD', 'CSD', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS274', 'LusiusCSP', 'CSP', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS275', 'LusiusCSX', 'CSX', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS276', 'LusiusCSC', 'CSC', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS277', 'LusiusCSJ', 'CSJ', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS278', 'LusiusCSL', 'CSL', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS279', 'LusiusCSH', 'CSH', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS280', 'LusiusCSP', 'CSP', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS281', 'LusiusCSY', 'CSY', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS282', 'LusiusCSQ', 'CSQ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS283', 'LusiusCSC', 'CSC', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS284', 'LusiusCSL', 'CSL', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS285', 'LusiusCSV', 'CSV', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS286', 'LusiusCSQ', 'CSQ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS287', 'LusiusCSP', 'CSP', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS288', 'LusiusCSU', 'CSU', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS289', 'LusiusCSZ', 'CSZ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS290', 'LusiusCSS', 'CSS', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS291', 'LusiusCSC', 'CSC', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS292', 'LusiusCSP', 'CSP', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS293', 'LusiusCSM', 'CSM', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS294', 'LusiusCSL', 'CSL', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS295', 'LusiusCSX', 'CSX', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS296', 'LusiusCSX', 'CSX', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS297', 'LusiusCSX', 'CSX', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS298', 'LusiusCSR', 'CSR', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS299', 'LusiusCSO', 'CSO', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS300', 'LusiusCSB', 'CSB', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS301', 'LusiusCSV', 'CSV', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS302', 'LusiusCSW', 'CSW', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS303', 'LusiusCSQ', 'CSQ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS304', 'LusiusCSL', 'CSL', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS305', 'LusiusCSU', 'CSU', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS306', 'LusiusCSX', 'CSX', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS307', 'LusiusCSV', 'CSV', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS308', 'LusiusCSA', 'CSA', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS309', 'LusiusCSM', 'CSM', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS310', 'LusiusCSF', 'CSF', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS311', 'LusiusCSJ', 'CSJ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS312', 'LusiusCSE', 'CSE', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS313', 'LusiusCSD', 'CSD', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS314', 'LusiusCSK', 'CSK', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS315', 'LusiusCSE', 'CSE', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS316', 'LusiusCSO', 'CSO', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS317', 'LusiusCSH', 'CSH', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS318', 'LusiusCSQ', 'CSQ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS319', 'LusiusCSF', 'CSF', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS320', 'LusiusCSH', 'CSH', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS321', 'LusiusCSV', 'CSV', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS322', 'LusiusCSD', 'CSD', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS323', 'LusiusCSO', 'CSO', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS324', 'LusiusCSW', 'CSW', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS325', 'LusiusCSC', 'CSC', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS326', 'LusiusCSU', 'CSU', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS327', 'LusiusCSW', 'CSW', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS328', 'LusiusCSD', 'CSD', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS329', 'LusiusCSB', 'CSB', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS330', 'LusiusCSF', 'CSF', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS331', 'LusiusCSM', 'CSM', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS332', 'LusiusCSI', 'CSI', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS333', 'LusiusCSA', 'CSA', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS334', 'LusiusCSA', 'CSA', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS335', 'LusiusCSR', 'CSR', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS336', 'LusiusCSL', 'CSL', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS337', 'LusiusCSW', 'CSW', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS338', 'LusiusCSY', 'CSY', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS339', 'LusiusCSY', 'CSY', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS340', 'LusiusCSZ', 'CSZ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS341', 'LusiusCSR', 'CSR', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS342', 'LusiusCSY', 'CSY', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS343', 'LusiusCSW', 'CSW', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS344', 'LusiusCSM', 'CSM', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS345', 'LusiusCSP', 'CSP', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS346', 'LusiusCSM', 'CSM', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS347', 'LusiusCSV', 'CSV', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS348', 'LusiusCSC', 'CSC', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS349', 'LusiusCSH', 'CSH', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS350', 'LusiusCSP', 'CSP', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS351', 'LusiusCSN', 'CSN', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS352', 'LusiusCST', 'CST', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS353', 'LusiusCSG', 'CSG', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS354', 'LusiusCSN', 'CSN', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS355', 'LusiusCSS', 'CSS', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS356', 'LusiusCSU', 'CSU', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS357', 'LusiusCSA', 'CSA', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS358', 'LusiusCSL', 'CSL', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS359', 'LusiusCSX', 'CSX', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS360', 'LusiusCSS', 'CSS', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS361', 'LusiusCSX', 'CSX', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS362', 'LusiusCSF', 'CSF', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS363', 'LusiusCSX', 'CSX', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS364', 'LusiusCSU', 'CSU', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS365', 'LusiusCSD', 'CSD', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS366', 'LusiusCSS', 'CSS', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS367', 'LusiusCSJ', 'CSJ', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS368', 'LusiusCSZ', 'CSZ', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS369', 'LusiusCSP', 'CSP', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS370', 'LusiusCSI', 'CSI', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS371', 'LusiusCSL', 'CSL', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS372', 'LusiusCSL', 'CSL', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS373', 'LusiusCSC', 'CSC', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS374', 'LusiusCSI', 'CSI', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS375', 'LusiusCSH', 'CSH', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS376', 'LusiusCSC', 'CSC', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS377', 'LusiusCSY', 'CSY', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS378', 'LusiusCSQ', 'CSQ', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS379', 'LusiusCSK', 'CSK', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS380', 'LusiusCSE', 'CSE', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS381', 'LusiusCSF', 'CSF', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS382', 'LusiusCSO', 'CSO', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS383', 'LusiusCSL', 'CSL', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS384', 'LusiusCSK', 'CSK', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS385', 'LusiusCSV', 'CSV', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS386', 'LusiusCSN', 'CSN', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS387', 'LusiusCSJ', 'CSJ', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS388', 'LusiusCSG', 'CSG', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS389', 'LusiusCSW', 'CSW', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS390', 'LusiusCSV', 'CSV', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS391', 'LusiusCSE', 'CSE', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS392', 'LusiusCSX', 'CSX', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS393', 'LusiusCSW', 'CSW', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS394', 'LusiusCSJ', 'CSJ', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS395', 'LusiusCSA', 'CSA', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS396', 'LusiusCSG', 'CSG', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS397', 'LusiusCSV', 'CSV', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS398', 'LusiusCSM', 'CSM', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS399', 'LusiusCSZ', 'CSZ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS400', 'LusiusCSF', 'CSF', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS401', 'LusiusCSY', 'CSY', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS402', 'LusiusCSS', 'CSS', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS403', 'LusiusCSI', 'CSI', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS404', 'LusiusCSV', 'CSV', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS405', 'LusiusCSQ', 'CSQ', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS406', 'LusiusCSM', 'CSM', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS407', 'LusiusCSI', 'CSI', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS408', 'LusiusCSK', 'CSK', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS409', 'LusiusCSN', 'CSN', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS410', 'LusiusCSA', 'CSA', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS411', 'LusiusCSN', 'CSN', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS412', 'LusiusCSV', 'CSV', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS413', 'LusiusCSM', 'CSM', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS414', 'LusiusCSD', 'CSD', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS415', 'LusiusCSF', 'CSF', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS416', 'LusiusCSC', 'CSC', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS417', 'LusiusCSY', 'CSY', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS418', 'LusiusCSI', 'CSI', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS419', 'LusiusCSB', 'CSB', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS420', 'LusiusCSR', 'CSR', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS421', 'LusiusCSY', 'CSY', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS422', 'LusiusCSG', 'CSG', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS423', 'LusiusCSH', 'CSH', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS424', 'LusiusCSI', 'CSI', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS425', 'LusiusCSF', 'CSF', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS426', 'LusiusCSJ', 'CSJ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS427', 'LusiusCSR', 'CSR', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS428', 'LusiusCSF', 'CSF', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS429', 'LusiusCSF', 'CSF', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS430', 'LusiusCSL', 'CSL', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS431', 'LusiusCSG', 'CSG', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS432', 'LusiusCSW', 'CSW', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS433', 'LusiusCSW', 'CSW', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS434', 'LusiusCSH', 'CSH', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS435', 'LusiusCSO', 'CSO', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS436', 'LusiusCSL', 'CSL', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS437', 'LusiusCSB', 'CSB', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS438', 'LusiusCSR', 'CSR', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS439', 'LusiusCSB', 'CSB', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS440', 'LusiusCSZ', 'CSZ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS441', 'LusiusCSJ', 'CSJ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS442', 'LusiusCSE', 'CSE', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS443', 'LusiusCSC', 'CSC', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS444', 'LusiusCSQ', 'CSQ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS445', 'LusiusCSO', 'CSO', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS446', 'LusiusCSV', 'CSV', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS447', 'LusiusCSS', 'CSS', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS448', 'LusiusCSM', 'CSM', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS449', 'LusiusCST', 'CST', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS450', 'LusiusCSQ', 'CSQ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS451', 'LusiusCST', 'CST', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS452', 'LusiusCSW', 'CSW', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS453', 'LusiusCSU', 'CSU', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS454', 'LusiusCSU', 'CSU', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS455', 'LusiusCSQ', 'CSQ', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS456', 'LusiusCSK', 'CSK', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS457', 'LusiusCSF', 'CSF', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS458', 'LusiusCSN', 'CSN', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS459', 'LusiusCSP', 'CSP', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS460', 'LusiusCSF', 'CSF', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS461', 'LusiusCSS', 'CSS', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS462', 'LusiusCSA', 'CSA', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS463', 'LusiusCSG', 'CSG', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS464', 'LusiusCSM', 'CSM', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS465', 'LusiusCSN', 'CSN', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS466', 'LusiusCSV', 'CSV', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS467', 'LusiusCSW', 'CSW', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS468', 'LusiusCSJ', 'CSJ', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS469', 'LusiusCSA', 'CSA', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS470', 'LusiusCSR', 'CSR', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS471', 'LusiusCSY', 'CSY', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS472', 'LusiusCSE', 'CSE', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS473', 'LusiusCSM', 'CSM', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS474', 'LusiusCSD', 'CSD', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS475', 'LusiusCSL', 'CSL', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS476', 'LusiusCSJ', 'CSJ', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS477', 'LusiusCSK', 'CSK', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS478', 'LusiusCSY', 'CSY', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS479', 'LusiusCSE', 'CSE', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS480', 'LusiusCSC', 'CSC', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS481', 'LusiusCSY', 'CSY', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS482', 'LusiusCSC', 'CSC', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS483', 'LusiusCSE', 'CSE', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS484', 'LusiusCSI', 'CSI', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS485', 'LusiusCST', 'CST', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS486', 'LusiusCSX', 'CSX', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS487', 'LusiusCSC', 'CSC', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS488', 'LusiusCSN', 'CSN', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS489', 'LusiusCSF', 'CSF', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS490', 'LusiusCSE', 'CSE', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS491', 'LusiusCSF', 'CSF', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS492', 'LusiusCSI', 'CSI', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS493', 'LusiusCSP', 'CSP', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS494', 'LusiusCSV', 'CSV', 'F');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS495', 'LusiusCSE', 'CSE', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS496', 'LusiusCSN', 'CSN', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS497', 'LusiusCSK', 'CSK', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS498', 'LusiusCSB', 'CSB', 'M');
    
INSERT INTO buyer
    (UserID, NamaDepan, NamaBelakang, Gender)
VALUES
    ('LusiusCS499', 'LusiusCSL', 'CSL', 'M');

-- SELLER
INSERT INTO seller
(UserID, NamaToko, NamaJalan, Kota, Provinsi, KodePos)
VALUES
('LusiusCS', 'Markop Shop', 'Jl. Pintu Surga Kondangsari', 'Cirebon', 'Jawa Barat', '45172');

INSERT INTO seller
(UserID, NamaToko, NamaJalan, Kota, Provinsi, KodePos)
VALUES
('Abloo', 'Moe Shop', 'Brooklyn', 'Kalimalang', 'Jujutsu', '69420');

INSERT INTO seller
(UserID, NamaToko, NamaJalan, Kota, Provinsi, KodePos)
VALUES
('CilokGoreng', 'Polyamory', 'Lebanon Street', 'Niagara', 'Netanyahu', '55555');

INSERT INTO seller
(UserID, NamaToko, NamaJalan, Kota, Provinsi, KodePos)
VALUES
('TahuBulat', 'Slipknot', 'Jl. Asia Afrika', 'Bandung', 'Jawa Barat', '25022');

INSERT INTO seller
(UserID, NamaToko, NamaJalan, Kota, Provinsi, KodePos)
VALUES
('CirengAyam', 'Seven Heaven', 'District 7. Bekasi', 'Margonda', 'Jawa Barat', '17701');

-- BARANG
INSERT INTO barang
(BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
('1234567890', 'Laptop', 'Laptop Asus', 12000000, 10);

INSERT INTO barang
(BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
('1234567891', 'Mouse Rexus', 'Mouse Gaming Murah Langsung Jago', 100000, 10);

INSERT INTO barang
(BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
('1234567892', 'Steelseries QcK+', 'Mousepad Gaming Murah Langsung Jago', 200000, 10);

INSERT INTO barang
(BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
('1234567893', 'Keyboard Corsair', 'Keyboard RGB Gaming Murah Langsung Jago', 2000000, 10);

INSERT INTO barang
(BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
('1234567894', 'RTX 3090', 'VGA Ghaib', 4000000, 10);

-- 500 BARANG
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4147201536', 'RTX 9070', 'VGA Ghaib 0', '41700', '29');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9958721362', 'RTX 1983', 'VGA Ghaib 1', '47900', '84');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4416324707', 'RTX 8620', 'VGA Ghaib 2', '30800', '76');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9840357781', 'RTX 3425', 'VGA Ghaib 3', '37100', '10');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6685245070', 'RTX 1899', 'VGA Ghaib 4', '20700', '83');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9851026531', 'RTX 5759', 'VGA Ghaib 5', '13100', '39');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3890694806', 'RTX 7716', 'VGA Ghaib 6', '49700', '94');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5039945570', 'RTX 4450', 'VGA Ghaib 7', '13200', '29');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1529852670', 'RTX 7407', 'VGA Ghaib 8', '11400', '75');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7168345370', 'RTX 6169', 'VGA Ghaib 9', '13200', '62');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4263867812', 'RTX 7820', 'VGA Ghaib 10', '16400', '75');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6138525191', 'RTX 1633', 'VGA Ghaib 11', '29600', '19');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9616312050', 'RTX 3883', 'VGA Ghaib 12', '49600', '18');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9488902739', 'RTX 6424', 'VGA Ghaib 13', '47500', '47');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6846209893', 'RTX 6530', 'VGA Ghaib 14', '39900', '89');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3321526519', 'RTX 1671', 'VGA Ghaib 15', '21700', '46');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1343267247', 'RTX 1824', 'VGA Ghaib 16', '44000', '33');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9669023903', 'RTX 2704', 'VGA Ghaib 17', '46700', '7');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1111399545', 'RTX 4606', 'VGA Ghaib 18', '11700', '32');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5502302893', 'RTX 7737', 'VGA Ghaib 19', '49500', '82');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2704600536', 'RTX 7230', 'VGA Ghaib 20', '49400', '14');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9026417293', 'RTX 1926', 'VGA Ghaib 21', '18500', '8');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5945849920', 'RTX 4825', 'VGA Ghaib 22', '35700', '76');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7681436306', 'RTX 2725', 'VGA Ghaib 23', '38300', '18');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1412293134', 'RTX 5196', 'VGA Ghaib 24', '33500', '41');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2483659988', 'RTX 9687', 'VGA Ghaib 25', '40400', '77');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5267768383', 'RTX 5045', 'VGA Ghaib 26', '14100', '26');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1339037283', 'RTX 5332', 'VGA Ghaib 27', '17700', '18');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9526345068', 'RTX 3960', 'VGA Ghaib 28', '23700', '53');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6874265387', 'RTX 3897', 'VGA Ghaib 29', '40100', '60');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5664622885', 'RTX 9525', 'VGA Ghaib 30', '49000', '82');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6231137744', 'RTX 9836', 'VGA Ghaib 31', '31700', '63');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2564502938', 'RTX 6659', 'VGA Ghaib 32', '49500', '11');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6826681165', 'RTX 1429', 'VGA Ghaib 33', '25800', '34');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6531454472', 'RTX 8974', 'VGA Ghaib 34', '32900', '53');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3731457970', 'RTX 5190', 'VGA Ghaib 35', '24000', '3');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4522350701', 'RTX 2538', 'VGA Ghaib 36', '16500', '60');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4468775997', 'RTX 6547', 'VGA Ghaib 37', '36600', '78');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5255799957', 'RTX 9572', 'VGA Ghaib 38', '14500', '42');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3856755926', 'RTX 8408', 'VGA Ghaib 39', '30800', '66');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8655415125', 'RTX 8867', 'VGA Ghaib 40', '40000', '42');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7420693420', 'RTX 5201', 'VGA Ghaib 41', '18900', '17');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7537037435', 'RTX 1601', 'VGA Ghaib 42', '36500', '94');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5556736463', 'RTX 4021', 'VGA Ghaib 43', '20900', '52');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6750626454', 'RTX 8284', 'VGA Ghaib 44', '35600', '29');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7659241374', 'RTX 1325', 'VGA Ghaib 45', '25800', '71');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3004031283', 'RTX 7321', 'VGA Ghaib 46', '40600', '22');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6135660621', 'RTX 6356', 'VGA Ghaib 47', '39300', '41');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9182979731', 'RTX 5718', 'VGA Ghaib 48', '47200', '96');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2336363017', 'RTX 2242', 'VGA Ghaib 49', '39600', '81');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3913258733', 'RTX 8111', 'VGA Ghaib 50', '28300', '62');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3274303849', 'RTX 4088', 'VGA Ghaib 51', '33300', '7');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7607596289', 'RTX 8329', 'VGA Ghaib 52', '36600', '64');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5179437430', 'RTX 4503', 'VGA Ghaib 53', '38300', '58');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5117107148', 'RTX 4888', 'VGA Ghaib 54', '10200', '66');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6123664146', 'RTX 8341', 'VGA Ghaib 55', '10500', '26');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6499684915', 'RTX 6777', 'VGA Ghaib 56', '27500', '22');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8389186183', 'RTX 6239', 'VGA Ghaib 57', '25300', '77');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3738600511', 'RTX 9626', 'VGA Ghaib 58', '47400', '49');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3020192791', 'RTX 6826', 'VGA Ghaib 59', '34900', '13');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8878756506', 'RTX 4833', 'VGA Ghaib 60', '30200', '99');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1249971356', 'RTX 4810', 'VGA Ghaib 61', '49100', '69');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8215851858', 'RTX 4827', 'VGA Ghaib 62', '45200', '90');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8890984075', 'RTX 2248', 'VGA Ghaib 63', '16200', '91');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3993262667', 'RTX 6780', 'VGA Ghaib 64', '22900', '21');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4049688985', 'RTX 2303', 'VGA Ghaib 65', '21300', '5');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1683522712', 'RTX 4450', 'VGA Ghaib 66', '10200', '27');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5915699809', 'RTX 8867', 'VGA Ghaib 67', '27900', '12');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7689791107', 'RTX 8600', 'VGA Ghaib 68', '48500', '7');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9848766437', 'RTX 3251', 'VGA Ghaib 69', '48900', '26');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1181378729', 'RTX 2023', 'VGA Ghaib 70', '35900', '39');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3961746051', 'RTX 5009', 'VGA Ghaib 71', '30700', '16');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7766069044', 'RTX 7688', 'VGA Ghaib 72', '18100', '82');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1689806397', 'RTX 9866', 'VGA Ghaib 73', '22100', '68');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6085874412', 'RTX 7830', 'VGA Ghaib 74', '15300', '11');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1195075053', 'RTX 8705', 'VGA Ghaib 75', '49400', '42');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2048511128', 'RTX 5516', 'VGA Ghaib 76', '14200', '85');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5225160028', 'RTX 4361', 'VGA Ghaib 77', '23600', '21');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1652280236', 'RTX 2604', 'VGA Ghaib 78', '43500', '71');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3711984818', 'RTX 7946', 'VGA Ghaib 79', '24400', '59');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3745859398', 'RTX 2568', 'VGA Ghaib 80', '33900', '74');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8717685325', 'RTX 1829', 'VGA Ghaib 81', '23500', '55');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1182732858', 'RTX 1492', 'VGA Ghaib 82', '34400', '10');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6785839266', 'RTX 2992', 'VGA Ghaib 83', '42700', '45');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5729258658', 'RTX 8271', 'VGA Ghaib 84', '10000', '96');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1540001640', 'RTX 3024', 'VGA Ghaib 85', '14000', '34');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5586119779', 'RTX 4565', 'VGA Ghaib 86', '22400', '23');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2662403768', 'RTX 9902', 'VGA Ghaib 87', '20400', '88');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8783329312', 'RTX 4706', 'VGA Ghaib 88', '21800', '37');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8693830916', 'RTX 8771', 'VGA Ghaib 89', '49000', '80');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9008300368', 'RTX 9564', 'VGA Ghaib 90', '31600', '77');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3894581102', 'RTX 6575', 'VGA Ghaib 91', '41400', '36');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3571540353', 'RTX 2078', 'VGA Ghaib 92', '35700', '3');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5564922892', 'RTX 9652', 'VGA Ghaib 93', '19900', '57');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1860074596', 'RTX 7904', 'VGA Ghaib 94', '43100', '65');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4020451672', 'RTX 2749', 'VGA Ghaib 95', '49200', '79');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8527009116', 'RTX 2985', 'VGA Ghaib 96', '30300', '47');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1517547543', 'RTX 8114', 'VGA Ghaib 97', '15800', '69');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8939414362', 'RTX 2625', 'VGA Ghaib 98', '48900', '46');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5628764663', 'RTX 4081', 'VGA Ghaib 99', '23500', '3');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6935212778', 'RTX 8619', 'VGA Ghaib 100', '16400', '73');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7746372593', 'RTX 3329', 'VGA Ghaib 101', '11200', '89');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8282407378', 'RTX 9167', 'VGA Ghaib 102', '26800', '19');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9623264737', 'RTX 4515', 'VGA Ghaib 103', '32000', '56');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6977525324', 'RTX 5920', 'VGA Ghaib 104', '22700', '64');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5932521128', 'RTX 7915', 'VGA Ghaib 105', '48400', '45');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1005777534', 'RTX 9850', 'VGA Ghaib 106', '31900', '77');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8487062246', 'RTX 2567', 'VGA Ghaib 107', '10400', '99');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4835989067', 'RTX 5249', 'VGA Ghaib 108', '15500', '96');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6656640567', 'RTX 4157', 'VGA Ghaib 109', '18600', '65');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1101481165', 'RTX 1615', 'VGA Ghaib 110', '14800', '33');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7589032370', 'RTX 1689', 'VGA Ghaib 111', '36700', '54');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9646343878', 'RTX 5133', 'VGA Ghaib 112', '16200', '69');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3330708370', 'RTX 4288', 'VGA Ghaib 113', '23100', '64');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2674266290', 'RTX 2318', 'VGA Ghaib 114', '30700', '43');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6206156184', 'RTX 5382', 'VGA Ghaib 115', '47100', '79');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6871101814', 'RTX 6977', 'VGA Ghaib 116', '11200', '66');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3792613120', 'RTX 5993', 'VGA Ghaib 117', '12800', '73');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4324207055', 'RTX 4947', 'VGA Ghaib 118', '24600', '48');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9781009816', 'RTX 3486', 'VGA Ghaib 119', '23700', '37');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2945227175', 'RTX 1978', 'VGA Ghaib 120', '23500', '21');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3453808716', 'RTX 8217', 'VGA Ghaib 121', '25400', '54');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7087100064', 'RTX 6829', 'VGA Ghaib 122', '28100', '75');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6255054456', 'RTX 7689', 'VGA Ghaib 123', '22300', '86');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4698261106', 'RTX 9436', 'VGA Ghaib 124', '46700', '22');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5102525331', 'RTX 7534', 'VGA Ghaib 125', '27500', '8');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5427596193', 'RTX 2616', 'VGA Ghaib 126', '11700', '6');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2769703562', 'RTX 1462', 'VGA Ghaib 127', '39300', '86');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4098258431', 'RTX 1704', 'VGA Ghaib 128', '13800', '65');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7391117345', 'RTX 3882', 'VGA Ghaib 129', '39000', '16');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5852374643', 'RTX 3471', 'VGA Ghaib 130', '36700', '6');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1979920225', 'RTX 9816', 'VGA Ghaib 131', '45400', '12');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9277897254', 'RTX 6757', 'VGA Ghaib 132', '14600', '36');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9565347422', 'RTX 9581', 'VGA Ghaib 133', '37600', '44');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1283198784', 'RTX 8365', 'VGA Ghaib 134', '11200', '69');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4618722639', 'RTX 5212', 'VGA Ghaib 135', '44400', '28');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9075166627', 'RTX 7697', 'VGA Ghaib 136', '23300', '67');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8736862949', 'RTX 1306', 'VGA Ghaib 137', '18200', '7');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1290459263', 'RTX 8866', 'VGA Ghaib 138', '33200', '11');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4327681952', 'RTX 6236', 'VGA Ghaib 139', '37600', '74');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3817250820', 'RTX 9039', 'VGA Ghaib 140', '44000', '14');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6795723230', 'RTX 7322', 'VGA Ghaib 141', '17100', '72');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1212329938', 'RTX 6870', 'VGA Ghaib 142', '36100', '82');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5539537376', 'RTX 5872', 'VGA Ghaib 143', '30200', '48');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9219748647', 'RTX 6215', 'VGA Ghaib 144', '16200', '99');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2265588004', 'RTX 4399', 'VGA Ghaib 145', '37100', '22');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1875468861', 'RTX 8752', 'VGA Ghaib 146', '29000', '68');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7066321328', 'RTX 4641', 'VGA Ghaib 147', '18300', '83');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1191695166', 'RTX 1825', 'VGA Ghaib 148', '15300', '21');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1951887682', 'RTX 4869', 'VGA Ghaib 149', '10700', '23');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5294932100', 'RTX 3393', 'VGA Ghaib 150', '16200', '84');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7136808356', 'RTX 7516', 'VGA Ghaib 151', '40200', '95');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8056229821', 'RTX 4648', 'VGA Ghaib 152', '41900', '71');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2130099316', 'RTX 1857', 'VGA Ghaib 153', '30700', '80');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3523490375', 'RTX 6510', 'VGA Ghaib 154', '10600', '50');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3455005882', 'RTX 7622', 'VGA Ghaib 155', '11800', '49');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1991206915', 'RTX 4059', 'VGA Ghaib 156', '12800', '23');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7275537035', 'RTX 7343', 'VGA Ghaib 157', '10700', '47');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9142878953', 'RTX 2273', 'VGA Ghaib 158', '13000', '49');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5590443136', 'RTX 1019', 'VGA Ghaib 159', '14100', '28');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3676134110', 'RTX 7898', 'VGA Ghaib 160', '26300', '57');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6094448026', 'RTX 2290', 'VGA Ghaib 161', '31200', '52');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7143829960', 'RTX 4259', 'VGA Ghaib 162', '28700', '80');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6763363817', 'RTX 3805', 'VGA Ghaib 163', '13200', '40');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9390253757', 'RTX 2016', 'VGA Ghaib 164', '15000', '63');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8943009937', 'RTX 8261', 'VGA Ghaib 165', '45700', '74');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2091549053', 'RTX 3258', 'VGA Ghaib 166', '14600', '98');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2678729047', 'RTX 4215', 'VGA Ghaib 167', '26100', '23');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9327877051', 'RTX 9970', 'VGA Ghaib 168', '12500', '14');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1728294401', 'RTX 9042', 'VGA Ghaib 169', '11900', '95');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3769543912', 'RTX 6399', 'VGA Ghaib 170', '42200', '56');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7058820631', 'RTX 8299', 'VGA Ghaib 171', '47100', '42');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9851501035', 'RTX 6706', 'VGA Ghaib 172', '31400', '62');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2823163853', 'RTX 6321', 'VGA Ghaib 173', '12300', '89');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9304763601', 'RTX 8937', 'VGA Ghaib 174', '47300', '80');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9873839175', 'RTX 7813', 'VGA Ghaib 175', '12900', '31');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8563445289', 'RTX 9512', 'VGA Ghaib 176', '19100', '31');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1221243879', 'RTX 7078', 'VGA Ghaib 177', '19300', '26');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7326162157', 'RTX 5621', 'VGA Ghaib 178', '38300', '60');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7824632138', 'RTX 1990', 'VGA Ghaib 179', '38600', '1');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6481381754', 'RTX 2388', 'VGA Ghaib 180', '11700', '55');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6431846946', 'RTX 9899', 'VGA Ghaib 181', '26400', '73');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9386789666', 'RTX 7648', 'VGA Ghaib 182', '48200', '69');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8402138609', 'RTX 9597', 'VGA Ghaib 183', '39600', '36');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8730446625', 'RTX 6094', 'VGA Ghaib 184', '34500', '80');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9223845032', 'RTX 5265', 'VGA Ghaib 185', '25000', '14');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2483171656', 'RTX 7891', 'VGA Ghaib 186', '19800', '66');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1634975814', 'RTX 2679', 'VGA Ghaib 187', '28300', '45');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9779279840', 'RTX 5592', 'VGA Ghaib 188', '46800', '21');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8755019969', 'RTX 8747', 'VGA Ghaib 189', '20800', '65');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4274098854', 'RTX 1894', 'VGA Ghaib 190', '21600', '89');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6183124955', 'RTX 1486', 'VGA Ghaib 191', '12200', '75');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3407329498', 'RTX 2115', 'VGA Ghaib 192', '28700', '59');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7595578739', 'RTX 3295', 'VGA Ghaib 193', '19600', '92');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8059809016', 'RTX 9152', 'VGA Ghaib 194', '28200', '1');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4287190715', 'RTX 4062', 'VGA Ghaib 195', '49600', '1');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8796183668', 'RTX 9059', 'VGA Ghaib 196', '13800', '89');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6319536296', 'RTX 4356', 'VGA Ghaib 197', '12800', '55');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6475427668', 'RTX 7674', 'VGA Ghaib 198', '30000', '27');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6152940585', 'RTX 6060', 'VGA Ghaib 199', '30300', '96');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4419820488', 'RTX 6943', 'VGA Ghaib 200', '26000', '62');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4687659201', 'RTX 7778', 'VGA Ghaib 201', '34400', '98');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8392533729', 'RTX 6904', 'VGA Ghaib 202', '37800', '45');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4532535576', 'RTX 4392', 'VGA Ghaib 203', '21500', '65');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1604260362', 'RTX 7841', 'VGA Ghaib 204', '14900', '83');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7272565349', 'RTX 1308', 'VGA Ghaib 205', '29800', '59');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3702891092', 'RTX 9819', 'VGA Ghaib 206', '48000', '73');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4970690494', 'RTX 5122', 'VGA Ghaib 207', '41100', '85');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3614559039', 'RTX 4266', 'VGA Ghaib 208', '22700', '72');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1809100699', 'RTX 8773', 'VGA Ghaib 209', '29800', '58');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7140767783', 'RTX 1492', 'VGA Ghaib 210', '28200', '13');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7086563255', 'RTX 8128', 'VGA Ghaib 211', '46600', '7');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3591348351', 'RTX 4601', 'VGA Ghaib 212', '46500', '57');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4396492863', 'RTX 6738', 'VGA Ghaib 213', '26200', '49');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7987592913', 'RTX 8302', 'VGA Ghaib 214', '40200', '38');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8736898603', 'RTX 1184', 'VGA Ghaib 215', '45900', '60');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3510958477', 'RTX 6982', 'VGA Ghaib 216', '47100', '83');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5940965638', 'RTX 3563', 'VGA Ghaib 217', '26900', '63');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2692056354', 'RTX 7812', 'VGA Ghaib 218', '12200', '83');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3294906523', 'RTX 7880', 'VGA Ghaib 219', '40900', '9');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2065376728', 'RTX 6115', 'VGA Ghaib 220', '25600', '1');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2003088502', 'RTX 7052', 'VGA Ghaib 221', '36900', '81');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1980306189', 'RTX 9975', 'VGA Ghaib 222', '45000', '28');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9932040476', 'RTX 5076', 'VGA Ghaib 223', '38000', '61');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5765757903', 'RTX 4545', 'VGA Ghaib 224', '22200', '56');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2586872678', 'RTX 4062', 'VGA Ghaib 225', '34600', '78');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1916682374', 'RTX 9365', 'VGA Ghaib 226', '16100', '66');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5111180881', 'RTX 8274', 'VGA Ghaib 227', '26400', '29');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3758217783', 'RTX 9520', 'VGA Ghaib 228', '37500', '31');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3362333085', 'RTX 6680', 'VGA Ghaib 229', '13300', '78');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2588162474', 'RTX 7119', 'VGA Ghaib 230', '29000', '4');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1234800356', 'RTX 2088', 'VGA Ghaib 231', '21300', '89');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7543296869', 'RTX 4958', 'VGA Ghaib 232', '29800', '49');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2050964200', 'RTX 3965', 'VGA Ghaib 233', '29500', '13');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2918427409', 'RTX 9403', 'VGA Ghaib 234', '32900', '91');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6497998492', 'RTX 3134', 'VGA Ghaib 235', '40300', '66');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4036341178', 'RTX 7762', 'VGA Ghaib 236', '21200', '7');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1632246696', 'RTX 3655', 'VGA Ghaib 237', '23800', '79');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3469232330', 'RTX 1215', 'VGA Ghaib 238', '11600', '39');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3274165039', 'RTX 3631', 'VGA Ghaib 239', '25000', '34');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8484895546', 'RTX 8572', 'VGA Ghaib 240', '26400', '14');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1301651932', 'RTX 5039', 'VGA Ghaib 241', '46200', '94');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1231785709', 'RTX 7166', 'VGA Ghaib 242', '47600', '53');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1944112592', 'RTX 6555', 'VGA Ghaib 243', '36600', '8');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3446287083', 'RTX 7299', 'VGA Ghaib 244', '47900', '54');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3927277727', 'RTX 9535', 'VGA Ghaib 245', '12700', '34');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6562063830', 'RTX 8009', 'VGA Ghaib 246', '47300', '60');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4143137458', 'RTX 4071', 'VGA Ghaib 247', '45700', '57');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9841536932', 'RTX 5383', 'VGA Ghaib 248', '28600', '30');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3488136996', 'RTX 2338', 'VGA Ghaib 249', '10300', '9');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5487553522', 'RTX 1972', 'VGA Ghaib 250', '23800', '33');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5107950166', 'RTX 6707', 'VGA Ghaib 251', '23300', '92');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9515565814', 'RTX 7009', 'VGA Ghaib 252', '40700', '13');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1638791419', 'RTX 2241', 'VGA Ghaib 253', '25700', '39');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3050164106', 'RTX 9976', 'VGA Ghaib 254', '14700', '92');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9711175749', 'RTX 6417', 'VGA Ghaib 255', '26300', '68');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1434558089', 'RTX 4614', 'VGA Ghaib 256', '35300', '77');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9780075160', 'RTX 4940', 'VGA Ghaib 257', '48100', '44');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9647135215', 'RTX 4158', 'VGA Ghaib 258', '19800', '73');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4402011919', 'RTX 2008', 'VGA Ghaib 259', '11400', '11');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8356631980', 'RTX 7296', 'VGA Ghaib 260', '37500', '96');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1764446277', 'RTX 7339', 'VGA Ghaib 261', '32800', '85');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9490863892', 'RTX 2572', 'VGA Ghaib 262', '20600', '46');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5424413169', 'RTX 9285', 'VGA Ghaib 263', '41300', '72');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2916404887', 'RTX 2887', 'VGA Ghaib 264', '46300', '73');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6342223144', 'RTX 6138', 'VGA Ghaib 265', '20400', '86');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9431907543', 'RTX 2878', 'VGA Ghaib 266', '13400', '74');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7282856266', 'RTX 6349', 'VGA Ghaib 267', '33200', '23');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9900379331', 'RTX 2090', 'VGA Ghaib 268', '40100', '53');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6550967318', 'RTX 2124', 'VGA Ghaib 269', '39000', '42');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3767628606', 'RTX 8003', 'VGA Ghaib 270', '24700', '47');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2591411136', 'RTX 2923', 'VGA Ghaib 271', '37900', '13');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3213406352', 'RTX 4812', 'VGA Ghaib 272', '24600', '49');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3077059981', 'RTX 9438', 'VGA Ghaib 273', '39100', '8');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2610087438', 'RTX 7063', 'VGA Ghaib 274', '27200', '75');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8957126304', 'RTX 7493', 'VGA Ghaib 275', '40100', '26');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8580558900', 'RTX 3615', 'VGA Ghaib 276', '29900', '74');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5408292517', 'RTX 5081', 'VGA Ghaib 277', '47000', '35');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2585031249', 'RTX 3396', 'VGA Ghaib 278', '16800', '15');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4947732569', 'RTX 7774', 'VGA Ghaib 279', '10800', '83');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5018458924', 'RTX 5560', 'VGA Ghaib 280', '24600', '5');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4245388965', 'RTX 2115', 'VGA Ghaib 281', '40600', '86');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6924801012', 'RTX 5753', 'VGA Ghaib 282', '35600', '66');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5551048980', 'RTX 9466', 'VGA Ghaib 283', '30300', '55');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7255701514', 'RTX 6985', 'VGA Ghaib 284', '25200', '84');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6686675918', 'RTX 3022', 'VGA Ghaib 285', '15700', '40');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7851089596', 'RTX 8629', 'VGA Ghaib 286', '43800', '34');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5479277612', 'RTX 2989', 'VGA Ghaib 287', '32300', '17');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2782544039', 'RTX 6542', 'VGA Ghaib 288', '30300', '3');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2504813549', 'RTX 7281', 'VGA Ghaib 289', '15100', '59');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5239844055', 'RTX 6669', 'VGA Ghaib 290', '38400', '24');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6567431158', 'RTX 7418', 'VGA Ghaib 291', '30600', '54');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5725268597', 'RTX 7900', 'VGA Ghaib 292', '37300', '61');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5322906783', 'RTX 2182', 'VGA Ghaib 293', '31700', '65');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4423107023', 'RTX 9889', 'VGA Ghaib 294', '17000', '87');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1261347101', 'RTX 1023', 'VGA Ghaib 295', '21000', '17');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1727391081', 'RTX 8525', 'VGA Ghaib 296', '26900', '42');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7742087450', 'RTX 9098', 'VGA Ghaib 297', '34500', '9');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9011494824', 'RTX 8318', 'VGA Ghaib 298', '45500', '26');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9734724904', 'RTX 6103', 'VGA Ghaib 299', '28200', '46');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8575238857', 'RTX 9722', 'VGA Ghaib 300', '44400', '64');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6084847171', 'RTX 6843', 'VGA Ghaib 301', '12700', '56');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3269545793', 'RTX 1134', 'VGA Ghaib 302', '35700', '69');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4943861143', 'RTX 6944', 'VGA Ghaib 303', '20600', '27');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1981829321', 'RTX 4998', 'VGA Ghaib 304', '39900', '81');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9297554408', 'RTX 7848', 'VGA Ghaib 305', '34900', '9');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1208759160', 'RTX 5573', 'VGA Ghaib 306', '16800', '51');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9598390775', 'RTX 2374', 'VGA Ghaib 307', '47600', '28');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9871636751', 'RTX 6966', 'VGA Ghaib 308', '45500', '88');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5498610743', 'RTX 5941', 'VGA Ghaib 309', '18300', '95');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3991500160', 'RTX 6343', 'VGA Ghaib 310', '21300', '13');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6170478799', 'RTX 5351', 'VGA Ghaib 311', '14500', '92');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7204189743', 'RTX 9867', 'VGA Ghaib 312', '16800', '79');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6871945013', 'RTX 9713', 'VGA Ghaib 313', '44300', '33');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2672572243', 'RTX 6780', 'VGA Ghaib 314', '43000', '24');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7802617971', 'RTX 5492', 'VGA Ghaib 315', '30300', '9');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5934216585', 'RTX 4889', 'VGA Ghaib 316', '34400', '38');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6480530004', 'RTX 7836', 'VGA Ghaib 317', '47900', '71');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2801104496', 'RTX 7905', 'VGA Ghaib 318', '32100', '26');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8537055203', 'RTX 1474', 'VGA Ghaib 319', '38000', '55');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4672617723', 'RTX 1651', 'VGA Ghaib 320', '48900', '66');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7971177251', 'RTX 1240', 'VGA Ghaib 321', '29000', '2');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8042273415', 'RTX 6623', 'VGA Ghaib 322', '10700', '95');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9232936343', 'RTX 1990', 'VGA Ghaib 323', '47200', '51');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4724231939', 'RTX 2130', 'VGA Ghaib 324', '39000', '38');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7266221061', 'RTX 5401', 'VGA Ghaib 325', '29800', '32');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7131974865', 'RTX 9579', 'VGA Ghaib 326', '34400', '89');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3687164535', 'RTX 8401', 'VGA Ghaib 327', '39400', '21');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7237527570', 'RTX 2717', 'VGA Ghaib 328', '29500', '83');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1811111829', 'RTX 2611', 'VGA Ghaib 329', '28000', '28');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6521497334', 'RTX 9258', 'VGA Ghaib 330', '41400', '37');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5665396730', 'RTX 8490', 'VGA Ghaib 331', '11800', '20');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7676380197', 'RTX 1161', 'VGA Ghaib 332', '48600', '24');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7868838744', 'RTX 1185', 'VGA Ghaib 333', '38400', '80');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6396515575', 'RTX 2043', 'VGA Ghaib 334', '46600', '71');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8720975423', 'RTX 1089', 'VGA Ghaib 335', '43700', '2');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8436097126', 'RTX 7970', 'VGA Ghaib 336', '48500', '22');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6343206976', 'RTX 8272', 'VGA Ghaib 337', '49100', '94');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4993829378', 'RTX 9750', 'VGA Ghaib 338', '27700', '12');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2099769697', 'RTX 9804', 'VGA Ghaib 339', '38100', '30');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4294506950', 'RTX 2388', 'VGA Ghaib 340', '29200', '61');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8820393398', 'RTX 8916', 'VGA Ghaib 341', '37100', '31');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3176871865', 'RTX 4204', 'VGA Ghaib 342', '19100', '99');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8021282423', 'RTX 7047', 'VGA Ghaib 343', '15200', '72');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8774970327', 'RTX 2246', 'VGA Ghaib 344', '24200', '57');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8758334321', 'RTX 7585', 'VGA Ghaib 345', '49800', '79');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3766276179', 'RTX 7955', 'VGA Ghaib 346', '29400', '51');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6937695151', 'RTX 6168', 'VGA Ghaib 347', '27000', '5');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4900672311', 'RTX 8733', 'VGA Ghaib 348', '33700', '80');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2312663012', 'RTX 8180', 'VGA Ghaib 349', '11200', '58');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5186642514', 'RTX 7593', 'VGA Ghaib 350', '39600', '79');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2946426111', 'RTX 1078', 'VGA Ghaib 351', '45500', '8');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9652197942', 'RTX 8689', 'VGA Ghaib 352', '24900', '21');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1940629535', 'RTX 4856', 'VGA Ghaib 353', '27500', '62');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2599567801', 'RTX 6766', 'VGA Ghaib 354', '42000', '43');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6508271359', 'RTX 6958', 'VGA Ghaib 355', '22200', '99');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5717481525', 'RTX 3013', 'VGA Ghaib 356', '26900', '23');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1902910550', 'RTX 3415', 'VGA Ghaib 357', '14800', '75');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2368150251', 'RTX 8221', 'VGA Ghaib 358', '41900', '36');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5038683495', 'RTX 8261', 'VGA Ghaib 359', '13100', '54');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2860011373', 'RTX 4222', 'VGA Ghaib 360', '41700', '2');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8259080811', 'RTX 8066', 'VGA Ghaib 361', '11200', '93');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2796123068', 'RTX 2719', 'VGA Ghaib 362', '11200', '77');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4123834589', 'RTX 7001', 'VGA Ghaib 363', '17100', '73');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8824627656', 'RTX 8159', 'VGA Ghaib 364', '30800', '95');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1885369381', 'RTX 9931', 'VGA Ghaib 365', '43600', '39');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4601901142', 'RTX 9265', 'VGA Ghaib 366', '39000', '21');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5024801975', 'RTX 3901', 'VGA Ghaib 367', '34200', '42');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8307368782', 'RTX 8334', 'VGA Ghaib 368', '15200', '70');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3882808446', 'RTX 5710', 'VGA Ghaib 369', '46100', '34');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2831866634', 'RTX 4089', 'VGA Ghaib 370', '22500', '76');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3819445684', 'RTX 3685', 'VGA Ghaib 371', '34400', '98');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3015595133', 'RTX 2503', 'VGA Ghaib 372', '15800', '91');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8700727484', 'RTX 8765', 'VGA Ghaib 373', '17400', '46');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2073685777', 'RTX 7178', 'VGA Ghaib 374', '31900', '43');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1691629227', 'RTX 7764', 'VGA Ghaib 375', '28700', '9');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8238413967', 'RTX 6054', 'VGA Ghaib 376', '29100', '39');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3208950851', 'RTX 7346', 'VGA Ghaib 377', '28700', '31');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6191985009', 'RTX 3393', 'VGA Ghaib 378', '21300', '64');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3210470374', 'RTX 9800', 'VGA Ghaib 379', '42500', '58');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2541925573', 'RTX 3516', 'VGA Ghaib 380', '19600', '44');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9504535376', 'RTX 2509', 'VGA Ghaib 381', '30800', '15');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3514469285', 'RTX 4392', 'VGA Ghaib 382', '13600', '18');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8091907945', 'RTX 9295', 'VGA Ghaib 383', '30300', '30');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4984262643', 'RTX 1831', 'VGA Ghaib 384', '25300', '24');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6863986247', 'RTX 7703', 'VGA Ghaib 385', '27200', '65');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7641533383', 'RTX 2160', 'VGA Ghaib 386', '38800', '47');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9320552202', 'RTX 8210', 'VGA Ghaib 387', '12800', '59');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3069398081', 'RTX 4013', 'VGA Ghaib 388', '31200', '8');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6595951000', 'RTX 2501', 'VGA Ghaib 389', '39700', '55');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7766679435', 'RTX 2125', 'VGA Ghaib 390', '31700', '62');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4327426206', 'RTX 8114', 'VGA Ghaib 391', '30600', '13');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5517499150', 'RTX 9739', 'VGA Ghaib 392', '46900', '83');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8077334988', 'RTX 7200', 'VGA Ghaib 393', '37000', '79');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6290787718', 'RTX 6879', 'VGA Ghaib 394', '19200', '31');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3962510911', 'RTX 4832', 'VGA Ghaib 395', '27000', '66');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3876140038', 'RTX 5438', 'VGA Ghaib 396', '31700', '59');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2512515576', 'RTX 4743', 'VGA Ghaib 397', '36700', '96');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5449525571', 'RTX 6602', 'VGA Ghaib 398', '37100', '24');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8408128995', 'RTX 5258', 'VGA Ghaib 399', '29300', '28');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8350626585', 'RTX 2702', 'VGA Ghaib 400', '22900', '41');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8814198258', 'RTX 7459', 'VGA Ghaib 401', '25200', '8');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9748986921', 'RTX 7787', 'VGA Ghaib 402', '32100', '42');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1818221178', 'RTX 5463', 'VGA Ghaib 403', '41000', '92');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1859096804', 'RTX 8242', 'VGA Ghaib 404', '21000', '98');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1934271467', 'RTX 8781', 'VGA Ghaib 405', '12100', '62');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4433031632', 'RTX 5027', 'VGA Ghaib 406', '45900', '45');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1964834661', 'RTX 9241', 'VGA Ghaib 407', '30900', '36');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2477504769', 'RTX 8291', 'VGA Ghaib 408', '35400', '66');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8674987155', 'RTX 2639', 'VGA Ghaib 409', '12400', '63');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2246845619', 'RTX 6020', 'VGA Ghaib 410', '48800', '95');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3226382816', 'RTX 8992', 'VGA Ghaib 411', '18800', '41');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6902118773', 'RTX 4249', 'VGA Ghaib 412', '49800', '20');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2123152636', 'RTX 5218', 'VGA Ghaib 413', '21100', '80');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1667707561', 'RTX 6483', 'VGA Ghaib 414', '42300', '8');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6359292670', 'RTX 3017', 'VGA Ghaib 415', '14100', '33');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6609177433', 'RTX 7345', 'VGA Ghaib 416', '29300', '12');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1923876393', 'RTX 3161', 'VGA Ghaib 417', '19600', '95');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2693886590', 'RTX 7806', 'VGA Ghaib 418', '35400', '75');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5201495228', 'RTX 6917', 'VGA Ghaib 419', '47900', '73');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3084877188', 'RTX 3691', 'VGA Ghaib 420', '48200', '77');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1644070450', 'RTX 7267', 'VGA Ghaib 421', '33200', '53');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2325889348', 'RTX 2460', 'VGA Ghaib 422', '45800', '37');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1923719062', 'RTX 5990', 'VGA Ghaib 423', '15600', '54');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7315999512', 'RTX 7483', 'VGA Ghaib 424', '31000', '8');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3745140493', 'RTX 3525', 'VGA Ghaib 425', '48000', '65');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4230509175', 'RTX 6336', 'VGA Ghaib 426', '17600', '48');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6249687612', 'RTX 7060', 'VGA Ghaib 427', '21200', '32');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6609787096', 'RTX 6212', 'VGA Ghaib 428', '25900', '95');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9143180662', 'RTX 6992', 'VGA Ghaib 429', '13100', '99');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5362395972', 'RTX 2639', 'VGA Ghaib 430', '37100', '20');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8557666320', 'RTX 5236', 'VGA Ghaib 431', '41600', '72');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9516345878', 'RTX 2964', 'VGA Ghaib 432', '37100', '1');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7587609375', 'RTX 4519', 'VGA Ghaib 433', '11800', '11');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1783776915', 'RTX 8641', 'VGA Ghaib 434', '16800', '82');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8554001464', 'RTX 6832', 'VGA Ghaib 435', '15200', '96');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2154594804', 'RTX 6211', 'VGA Ghaib 436', '21500', '94');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7304429754', 'RTX 2547', 'VGA Ghaib 437', '29700', '81');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5409902758', 'RTX 4524', 'VGA Ghaib 438', '37100', '48');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4316861335', 'RTX 8690', 'VGA Ghaib 439', '38400', '44');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2324827609', 'RTX 6053', 'VGA Ghaib 440', '37600', '18');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1021292079', 'RTX 9661', 'VGA Ghaib 441', '47500', '43');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1746932384', 'RTX 4292', 'VGA Ghaib 442', '34100', '70');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6802760128', 'RTX 2612', 'VGA Ghaib 443', '37600', '63');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8108707390', 'RTX 5968', 'VGA Ghaib 444', '19900', '93');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9634497284', 'RTX 8120', 'VGA Ghaib 445', '48900', '6');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5152356489', 'RTX 4919', 'VGA Ghaib 446', '45600', '49');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8749095751', 'RTX 6225', 'VGA Ghaib 447', '28700', '11');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6698009939', 'RTX 3438', 'VGA Ghaib 448', '14900', '37');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5348333680', 'RTX 2051', 'VGA Ghaib 449', '25300', '85');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7278824017', 'RTX 9416', 'VGA Ghaib 450', '39000', '58');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3291482605', 'RTX 4295', 'VGA Ghaib 451', '41100', '52');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9924980290', 'RTX 9242', 'VGA Ghaib 452', '47400', '54');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9460904139', 'RTX 4498', 'VGA Ghaib 453', '47400', '85');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3556778410', 'RTX 1773', 'VGA Ghaib 454', '16500', '49');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1671117744', 'RTX 1656', 'VGA Ghaib 455', '39800', '43');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1087702238', 'RTX 2933', 'VGA Ghaib 456', '17400', '94');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7518018547', 'RTX 7953', 'VGA Ghaib 457', '43300', '75');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4204512184', 'RTX 2920', 'VGA Ghaib 458', '25800', '46');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5628977157', 'RTX 7360', 'VGA Ghaib 459', '41400', '60');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8834112710', 'RTX 8053', 'VGA Ghaib 460', '22000', '34');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8878830932', 'RTX 1530', 'VGA Ghaib 461', '22500', '65');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7095693111', 'RTX 6531', 'VGA Ghaib 462', '29200', '17');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8772137316', 'RTX 5937', 'VGA Ghaib 463', '11700', '21');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8090929583', 'RTX 5814', 'VGA Ghaib 464', '20400', '91');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8198837420', 'RTX 8240', 'VGA Ghaib 465', '37800', '31');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4300158890', 'RTX 8683', 'VGA Ghaib 466', '18700', '24');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6894791498', 'RTX 7668', 'VGA Ghaib 467', '45300', '54');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5039435619', 'RTX 9163', 'VGA Ghaib 468', '21600', '37');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1296384266', 'RTX 4565', 'VGA Ghaib 469', '41200', '45');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1951866125', 'RTX 5736', 'VGA Ghaib 470', '40300', '19');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('3794968895', 'RTX 4191', 'VGA Ghaib 471', '32000', '90');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8013271962', 'RTX 6703', 'VGA Ghaib 472', '14700', '90');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7985202712', 'RTX 2980', 'VGA Ghaib 473', '14900', '30');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1410146492', 'RTX 8917', 'VGA Ghaib 474', '34500', '99');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7383507549', 'RTX 9823', 'VGA Ghaib 475', '10600', '23');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2603545364', 'RTX 5659', 'VGA Ghaib 476', '42800', '3');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6546005043', 'RTX 2981', 'VGA Ghaib 477', '23300', '51');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7532447171', 'RTX 1683', 'VGA Ghaib 478', '46000', '58');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5311688518', 'RTX 6351', 'VGA Ghaib 479', '13100', '43');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7739789470', 'RTX 3965', 'VGA Ghaib 480', '35500', '59');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2491595693', 'RTX 9050', 'VGA Ghaib 481', '38000', '99');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7962499427', 'RTX 4748', 'VGA Ghaib 482', '20500', '55');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2916989100', 'RTX 5771', 'VGA Ghaib 483', '38600', '43');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2516154660', 'RTX 7135', 'VGA Ghaib 484', '40000', '7');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2906601092', 'RTX 3256', 'VGA Ghaib 485', '40400', '66');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8100502725', 'RTX 4441', 'VGA Ghaib 486', '20000', '12');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6111674072', 'RTX 6980', 'VGA Ghaib 487', '11100', '50');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('9424436221', 'RTX 9147', 'VGA Ghaib 488', '10000', '59');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5856146996', 'RTX 9084', 'VGA Ghaib 489', '20800', '35');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('1045460778', 'RTX 5493', 'VGA Ghaib 490', '41100', '97');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2801738718', 'RTX 2624', 'VGA Ghaib 491', '10900', '54');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('6954935000', 'RTX 8968', 'VGA Ghaib 492', '16200', '86');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('8142128424', 'RTX 6849', 'VGA Ghaib 493', '30700', '98');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('4979163232', 'RTX 9061', 'VGA Ghaib 494', '11300', '48');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('5418528806', 'RTX 5773', 'VGA Ghaib 495', '29900', '64');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7343360736', 'RTX 3466', 'VGA Ghaib 496', '13100', '96');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7442682967', 'RTX 6092', 'VGA Ghaib 497', '21100', '44');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('7504730091', 'RTX 6112', 'VGA Ghaib 498', '32000', '42');
    
INSERT INTO barang
    (BarangID, NamaBarang, Deskripsi, Harga, Stok)
VALUES
    ('2999709336', 'RTX 4039', 'VGA Ghaib 499', '14000', '10');
    
-- DATA PEMBAYARAN
INSERT INTO data_pembayaran
(OrderID, HargaBarang,Ongkir,NamaBankTujuan,RekeningTujuan,BankRekeningPengirim)
VALUES
('ABCEFG0123', 12000000, 50000, 'BNI', '42069721', 'BCA 42069720');

INSERT INTO data_pembayaran
(OrderID, HargaBarang,Ongkir,NamaBankTujuan,RekeningTujuan,BankRekeningPengirim)
VALUES
('ABCEFG0124', 100000, 22000, 'BRI', '42069888', 'BRI 42069770');

INSERT INTO data_pembayaran
(OrderID, HargaBarang,Ongkir,NamaBankTujuan,RekeningTujuan,BankRekeningPengirim)
VALUES
('ABCEFG0125', 200000, 20000, 'BNI', '42069212', 'BTN 42069710');

INSERT INTO data_pembayaran
(OrderID, HargaBarang,Ongkir,NamaBankTujuan,RekeningTujuan,BankRekeningPengirim)
VALUES
('ABCEFG0126', 2000000, 20000, 'BTN', '42069212', 'BCA 42069730');

INSERT INTO data_pembayaran
(OrderID, HargaBarang,Ongkir,NamaBankTujuan,RekeningTujuan,BankRekeningPengirim)
VALUES
('ABCEFG0127', 4000000, 20000, 'BNI', '21269720', 'BRI 42069520');

INSERT INTO data_pembayaran
(OrderID, HargaBarang,Ongkir,NamaBankTujuan,RekeningTujuan,BankRekeningPengirim)
VALUES
('ABCEFG0128', 12000000, 50000, 'BNI', '42063720', 'BCA 42069220');

INSERT INTO data_pembayaran
(OrderID, HargaBarang,Ongkir,NamaBankTujuan,RekeningTujuan,BankRekeningPengirim)
VALUES
('ABCEFG0129', 100000, 20000, 'BNI', '42069720', 'BRI 42069170');

INSERT INTO data_pembayaran
(OrderID, HargaBarang,Ongkir,NamaBankTujuan,RekeningTujuan,BankRekeningPengirim)
VALUES
('ABCEFG0130', 200000, 20000, 'BNI', '42069720', 'BTN 41069710');

INSERT INTO data_pembayaran
(OrderID, HargaBarang,Ongkir,NamaBankTujuan,RekeningTujuan,BankRekeningPengirim)
VALUES
('ABCEFG0131', 2000000, 20000, 'BNI', '42069720', 'BCA 42059730');

INSERT INTO data_pembayaran
(OrderID, HargaBarang,Ongkir,NamaBankTujuan,RekeningTujuan,BankRekeningPengirim)
VALUES
('ABCEFG0132', 4000000, 20000, 'BNI', '42069720', 'BRI 42066520');

INSERT INTO data_pembayaran
(OrderID, HargaBarang,Ongkir,NamaBankTujuan,RekeningTujuan,BankRekeningPengirim)
VALUES
('KOKK3OK398', 12000000, 20000, 'BNI', '47129814', 'BCA 42069720 ');

INSERT INTO data_pembayaran
(OrderID, HargaBarang,Ongkir,NamaBankTujuan,RekeningTujuan,BankRekeningPengirim)
VALUES
('AODKEOA872', 100000, 40000, 'BJB', '72000342', 'Mandiri 19823214');

INSERT INTO data_pembayaran
(OrderID, HargaBarang,Ongkir,NamaBankTujuan,RekeningTujuan,BankRekeningPengirim)
VALUES
('VADE209122', 200000, 10000, 'CIMB NIAGA', '10930232', 'BRI 23190892 ');

INSERT INTO data_pembayaran
(OrderID, HargaBarang,Ongkir,NamaBankTujuan,RekeningTujuan,BankRekeningPengirim)
VALUES
('VR04672036', 2000000, 25000, 'MANDIRI', '49002846', 'BJB 77343431 ');

INSERT INTO data_pembayaran
(OrderID, HargaBarang,Ongkir,NamaBankTujuan,RekeningTujuan,BankRekeningPengirim)
VALUES
('00D9EAA331', 4000000, 100000, 'BCA', '65934371', 'BNI 32183122 ');

INSERT INTO menjual_dijual
(UserID,BarangID,RecordBarangYgSama)
VALUES
('LusiusCS', '1234567890', 'Laptop');

INSERT INTO menjual_dijual
(UserID,BarangID,RecordBarangYgSama)
VALUES
('CirengAyam', '1234567890', 'Laptop');

INSERT INTO menjual_dijual
(UserID,BarangID,RecordBarangYgSama)
VALUES
('Abloo', '1234567890', 'Laptop');

INSERT INTO menjual_dijual
(UserID,BarangID,RecordBarangYgSama)
VALUES
('Abloo', '1234567891', 'Mouse Rexus');

INSERT INTO menjual_dijual
(UserID,BarangID,RecordBarangYgSama)
VALUES
('CirengAyam', '1234567892', 'Steelseries QcK+');

INSERT INTO menjual_dijual
(UserID,BarangID,RecordBarangYgSama)
VALUES
('TahuBulat', '1234567893', 'Keyboard Corsair');

INSERT INTO menjual_dijual
(UserID,BarangID,RecordBarangYgSama)
VALUES
('CilokGoreng', '1234567894', 'RTX 3090');


-- TRANSAKSI
-- 1
INSERT INTO transaksi
(TransaksiID,OrderID,BarangID,UserID,TotalNilai,
KodePembayaran,Provinsi,Kota,NamaJalan,Tipe,
Berat,Kondisi,StatusTransaksi)
VALUES
('01234ABCDE', 'ABCEFG0128', '1234567890', 'LusiusCS', 12020000, 
'AB010', 'Jawa Barat', 'Cirebon', 'Jl. Pintu Surga Kondangsari',
'Barang Elektronik', 3000, 'Baru', 'Belum Dibayar'
);

-- 2
INSERT INTO transaksi
(TransaksiID,OrderID,BarangID,UserID,TotalNilai,
KodePembayaran,Provinsi,Kota,NamaJalan,Tipe,
Berat,Kondisi,StatusTransaksi)
VALUES
('11234ABCDE', 'ABCEFG0129', '1234567891', 'CirengAyam', 120000, 
'AB011', 'Jawa Barat', 'Margonda', 'District 7. Bekasi',
'Barang Elektronik', 500, 'Baru', 'Dikemas oleh Seller'
);

-- 3
INSERT INTO transaksi
(TransaksiID,OrderID,BarangID,UserID,TotalNilai,
KodePembayaran,Provinsi,Kota,NamaJalan,Tipe,
Berat,Kondisi,StatusTransaksi)
VALUES
('21234ABCDE', 'ABCEFG0129', '1234567892', 'Abloo', 220000, 
'AB012', 'Jujutsu', 'Kalimalang', 'Brooklyn',
'Barang Elektronik', 100, 'Baru', 'Selesai'
);

-- 4
INSERT INTO transaksi
(TransaksiID,OrderID,BarangID,UserID,TotalNilai,
KodePembayaran,Provinsi,Kota,NamaJalan,Tipe,
Berat,Kondisi,StatusTransaksi)
VALUES
('31234ABCDE', 'ABCEFG0131', '1234567893', 'Abloo', 2020000, 
'AB013', 'Jujutsu', 'Kalimalang', 'Brooklyn',
'Barang Elektronik', 1000, 'Baru', 'Sudah Dibayar'
);

-- 5
INSERT INTO transaksi
(TransaksiID,OrderID,BarangID,UserID,TotalNilai,
KodePembayaran,Provinsi,Kota,NamaJalan,Tipe,
Berat,Kondisi,StatusTransaksi)
VALUES
('41234ABCDE', 'ABCEFG0132', '1234567894', 'CilokGoreng', 4020000, 
'AB014', 'Netanyahu', 'Niagara', 'Lebanon Street',
'Barang Elektronik', 1500, 'Baru', 'Dikirim oleh Seller'
);

-- 6
INSERT INTO transaksi
(TransaksiID,OrderID,BarangID,UserID,TotalNilai,
KodePembayaran,Provinsi,Kota,NamaJalan,Tipe,
Berat,Kondisi,StatusTransaksi)
VALUES
('51234ABCDE', 'ABCEFG0123', '1234567890', 'LusiusCS', 12050000, 
'AB123', 'Jl. Pintu Surga Kondangsari', 'Cirebon', 'Jawa Barat',
'Barang Elektronik', 3000, 'Baru', 'Belum Dibayar'
);

-- 7
INSERT INTO transaksi
(TransaksiID,OrderID,BarangID,UserID,TotalNilai,
KodePembayaran,Provinsi,Kota,NamaJalan,Tipe,
Berat,Kondisi,StatusTransaksi)
VALUES
('DE3DDK33F2', 'KOKK3OK398', '1234567890', 'LusiusCS', 12020000, 
'FB555', 'Jawa Barat', 'Cirebon', 'Jl. Pintu Surga Kondangsari',
'Barang Elektronik', 3000, 'Baru', 'Selesai'
);

-- 8
INSERT INTO transaksi
(TransaksiID,OrderID,BarangID,UserID,TotalNilai,
KodePembayaran,Provinsi,Kota,NamaJalan,Tipe,
Berat,Kondisi,StatusTransaksi)
VALUES
('9SD34013UJ', 'AODKEOA872', '1234567891', 'Abloo', 140000, 
'CD729', 'Jujutsu', 'Kalimalang', 'Brooklyn',
'Barang Elektronik', 500, 'Baru', 'Sudah Dibayar'
);

-- 9
INSERT INTO transaksi
(TransaksiID,OrderID,BarangID,UserID,TotalNilai,
KodePembayaran,Provinsi,Kota,NamaJalan,Tipe,
Berat,Kondisi,StatusTransaksi)
VALUES
('E3D4MD4AD4', 'VADE209122', '1234567892', 'CilokGoreng', 210000, 
'980BH', 'Netanyahu', 'Niagara', 'Lebanon Street',
'Barang Elektronik', 100, 'Baru', 'Dikemas oleh Seller'
);

-- 10
INSERT INTO transaksi
(TransaksiID,OrderID,BarangID,UserID,TotalNilai,
KodePembayaran,Provinsi,Kota,NamaJalan,Tipe,
Berat,Kondisi,StatusTransaksi)
VALUES
('UPD2D34U8D', 'VR04672036', '1234567893', 'TahuBulat', 2025000, 
'DGU92', 'Jawa Barat', 'Bandung', 'Jl. Asia Afrika',
'Barang Elektronik', 1000, 'Baru', 'Belum Dibayar'
);

-- 11
INSERT INTO transaksi
(TransaksiID,OrderID,BarangID,UserID,TotalNilai,
KodePembayaran,Provinsi,Kota,NamaJalan,Tipe,
Berat,Kondisi,StatusTransaksi)
VALUES
('9876543219', 'ABCEFG0123', '1234567890', 'LusiusCS', 12050000, 
'AB123', 'Jl. Pintu Surga Kondangsari', 'Cirebon', 'Jawa Barat',
'Barang Elektronik', 3000, 'Baru', 'Belum Dibayar'
);

-- 12
INSERT INTO transaksi
(TransaksiID,OrderID,BarangID,UserID,TotalNilai,
KodePembayaran,Provinsi,Kota,NamaJalan,Tipe,
Berat,Kondisi,StatusTransaksi)
VALUES
('9876543218', 'ABCEFG0124', '1234567891', 'Abloo', 122000, 
'AB124', 'Jujutsu', 'Kalimalang', 'Brooklyn',
'Barang Elektronik', 500, 'Baru', 'Belum Dibayar'
);

-- 13
INSERT INTO transaksi
(TransaksiID,OrderID,BarangID,UserID,TotalNilai,
KodePembayaran,Provinsi,Kota,NamaJalan,Tipe,
Berat,Kondisi,StatusTransaksi)
VALUES
('9876543217', 'ABCEFG0124', '1234567892', 'CilokGoreng', 220000, 
'AB125', 'Netanyahu', 'Niagara', 'Lebanon Street',
'Barang Elektronik', 100, 'Baru', 'Belum Dibayar'
);

-- 14
INSERT INTO transaksi
(TransaksiID,OrderID,BarangID,UserID,TotalNilai,
KodePembayaran,Provinsi,Kota,NamaJalan,Tipe,
Berat,Kondisi,StatusTransaksi)
VALUES
('9876543216', 'ABCEFG0125', '1234567893', 'TahuBulat', 2020000, 
'AB126', 'Jawa Barat', 'Bandung', 'Jl. Asia Afrika',
'Barang Elektronik', 1000, 'Baru', 'Belum Dibayar'
);

-- 15
INSERT INTO transaksi
(TransaksiID,OrderID,BarangID,UserID,TotalNilai,
KodePembayaran,Provinsi,Kota,NamaJalan,Tipe,
Berat,Kondisi,StatusTransaksi)
VALUES
('9876543215', 'ABCEFG0126', '1234567894', 'CirengAyam', 4020000, 
'AB127', 'Jawa Barat', 'Margonda','District 7. Bekasi',
'Barang Elektronik', 1500, 'Baru', 'Belum Dibayar'
);

--------NOMOR 2a
-- 1 Kolom
select userid from buyer
Where namabelakang = 'Gulugulu';
-- 2 Kolom
select userid, alamatEmail from users
where userid = 'LusiusCS77' and alamatEmail = '77LusiusCS@email.com';
-- 3 kolom
select namabarang, deskripsi, harga from barang 
where barangid like '%2%' and deskripsi like '%Ghaib%' and harga < 30000;

--------NOMOR 2b
-- 2 Tabel
select u.userid, b.namadepan, b.namabelakang
from users u inner join buyer b
on u.userid = b.userid
where b.namadepan like '%usi%' and b.gender = 'F';

-- 3 Tabel
select u.alamatEmail, b.namadepan, t.kota
from users u
join buyer b
on u.userID = b.userid
join transaksi t
on b.userID = t.userid
where alamatemail like '%';

select * from users
select * from barang
