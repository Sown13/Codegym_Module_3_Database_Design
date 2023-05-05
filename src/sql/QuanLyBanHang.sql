use QuanLyBanHang;
CREATE TABLE Customeres
(
    cID   INT AUTO_INCREMENT PRIMARY KEY,
    cName VARCHAR(255) not null,
    cAge  INT
);
CREATE TABLE Orders
(
    oID         INT AUTO_INCREMENT PRIMARY KEY,
    cID         INT,
    FOREIGN KEY (cID) REFERENCES Customeres (cID),
    oDate       DATE,
    oTotalPrice DOUBLE
);
CREATE TABLE Products
(
    pID    INT AUTO_INCREMENT PRIMARY KEY,
    pName  VARCHAR(255),
    pPrice DOUBLE
);
CREATE TABLE OrderDetail
(
    oID   INT,
    pID   INT,
    odQTY INT,
    PRIMARY KEY (oID, pID)
);
INSERT INTO Customeres(cName, cAge)
VALUES ('Son', 30),
       ('Nam', 40);
INSERT INTO Products(pName, pPrice)
VALUES ('sp1', 100),
       ('sp2', 200);
ALTER TABLE OrderDetail
ADD CONSTRAINT oID
FOREIGN KEY (oID) REFERENCES Orders(oID);
ALTER TABLE OrderDetail
ADD CONSTRAINT FOREIGN KEY (pID) REFERENCES Products(pID);
INSERT INTO orders(cID, oDate, oTotalPrice)
VALUES (1,now(),100),
       (2,now(),100),
       (1,now(),200);
INSERT INTO orderdetail
VALUES (1,1,10),
       (1,2,5),
       (2,2,20),
       (3,1,6);
SELECT*FROM orderdetail;
SELECT*FROM orderdetail WHERE pID = 1 OR pID = 2;
SELECT*FROM orderdetail WHERE pID = 1;