CREATE TABLE computer_store (id INTEGER PRIMARY KEY,condition TEXT, color TEXT, operatingsystem TEXT, price INTEGER);

INSERT INTO computer_store VALUES(1, 'excellent', 'black', 'Windows 10', 250);
INSERT INTO computer_store VALUES(2, 'bad', 'black', 'Windows 7', 170);
INSERT INTO computer_store VALUES(3, 'fair', 'blue', 'Windows 10', 200);
INSERT INTO computer_store VALUES(4, 'good', 'silver', 'MacOS', 310);
INSERT INTO computer_store VALUES(5, 'good', 'blue', 'MacOS', 200);
INSERT INTO computer_store VALUES(6, 'excellent', 'black', 'Windows 10', 250);
INSERT INTO computer_store VALUES(7, 'good', 'black', 'Windows 7', 170);
INSERT INTO computer_store VALUES(8, 'good', 'blue', 'Windows 10', 190);
INSERT INTO computer_store VALUES(9, 'good', 'silver', 'MacOS', 300);
INSERT INTO computer_store VALUES(10, 'good', 'blue', 'Windows 10', 200);
INSERT INTO computer_store VALUES(11, 'excellent', 'black', 'Windows 10', 250);
INSERT INTO computer_store VALUES(12, 'good', 'purple', 'Windows 7', 170);
INSERT INTO computer_store VALUES(13, 'good', 'blue', 'Windows 10', 220);
INSERT INTO computer_store VALUES(14, 'bad', 'silver', 'MacOS', 210);
INSERT INTO computer_store VALUES(15, 'good', 'red', 'Windows 7', 180);

SELECT * FROM computer_store ORDER BY price;

SELECT SUM(price) FROM computer_store;