-- Create the checks table
CREATE TABLE Checks
(
    CheckID       INT PRIMARY KEY,
    AccountNumber VARCHAR(20),
    RoutingNumber VARCHAR(20),
    CheckNumber   INT,
    Date          DATE,
    Payee         VARCHAR(100),
    Amount        DECIMAL(10, 2),
    Memo          VARCHAR(255),
    Signature     VARCHAR(255)
);

-- Insert sample data into the checks table
INSERT INTO Checks (CheckID, AccountNumber, RoutingNumber, CheckNumber, Date, Payee, Amount, Memo, Signature)
VALUES (1, '123456789', '987654321', 1001, '2023-01-01', 'Payee 1', 102.50, 'Memo 1', 'Signature 1'),
       (2, '123456789', '987654321', 1002, '2023-01-02', 'Payee 2', 105.00, 'Memo 2', 'Signature 2'),
       (3, '123456789', '987654321', 1003, '2023-01-03', 'Payee 3', 107.50, 'Memo 3', 'Signature 3'),
       (4, '123456789', '987654321', 1004, '2023-01-04', 'Payee 4', 110.00, 'Memo 4', 'Signature 4'),
       (5, '123456789', '987654321', 1005, '2023-01-05', 'Payee 5', 112.50, 'Memo 5', 'Signature 5'),
       (6, '123456789', '987654321', 1006, '2023-01-06', 'Payee 6', 115.00, 'Memo 6', 'Signature 6'),
       (7, '123456789', '987654321', 1007, '2023-01-07', 'Payee 7', 117.50, 'Memo 7', 'Signature 7'),
       (8, '123456789', '987654321', 1008, '2023-01-08', 'Payee 8', 120.00, 'Memo 8', 'Signature 8'),
       (9, '123456789', '987654321', 1009, '2023-01-09', 'Payee 9', 122.50, 'Memo 9', 'Signature 9'),
       (10, '123456789', '987654321', 1010, '2023-01-10', 'Payee 10', 125.00, 'Memo 10', 'Signature 10'),
       (11, '123456789', '987654321', 1011, '2023-01-11', 'Payee 11', 127.50, 'Memo 11', 'Signature 11'),
       (12, '123456789', '987654321', 1012, '2023-01-12', 'Payee 12', 130.00, 'Memo 12', 'Signature 12'),
       (13, '123456789', '987654321', 1013, '2023-01-13', 'Payee 13', 132.50, 'Memo 13', 'Signature 13'),
       (14, '123456789', '987654321', 1014, '2023-01-14', 'Payee 14', 135.00, 'Memo 14', 'Signature 14'),
       (15, '123456789', '987654321', 1015, '2023-01-15', 'Payee 15', 137.50, 'Memo 15', 'Signature 15'),
       (16, '123456789', '987654321', 1016, '2023-01-16', 'Payee 16', 140.00, 'Memo 16', 'Signature 16'),
       (17, '123456789', '987654321', 1017, '2023-01-17', 'Payee 17', 142.50, 'Memo 17', 'Signature 17'),
       (18, '123456789', '987654321', 1018, '2023-01-18', 'Payee 18', 145.00, 'Memo 18', 'Signature 18'),
       (19, '123456789', '987654321', 1019, '2023-01-19', 'Payee 19', 147.50, 'Memo 19', 'Signature 19'),
       (20, '123456789', '987654321', 1020, '2023-01-20', 'Payee 20', 150.00, 'Memo 20', 'Signature 20'),
       (21, '123456789', '987654321', 1021, '2023-01-21', 'Payee 21', 152.50, 'Memo 21', 'Signature 21'),
       (22, '123456789', '987654321', 1022, '2023-01-22', 'Payee 22', 155.00, 'Memo 22', 'Signature 22'),
       (23, '123456789', '987654321', 1023, '2023-01-23', 'Payee 23', 157.50, 'Memo 23', 'Signature 23'),
       (24, '123456789', '987654321', 1024, '2023-01-24', 'Payee 24', 160.00, 'Memo 24', 'Signature 24'),
       (25, '123456789', '987654321', 1025, '2023-01-25', 'Payee 25', 162.50, 'Memo 25', 'Signature 25'),
       (26, '123456789', '987654321', 1026, '2023-01-26', 'Payee 26', 165.00, 'Memo 26', 'Signature 26'),
       (27, '123456789', '987654321', 1027, '2023-01-27', 'Payee 27', 167.50, 'Memo 27', 'Signature 27'),
       (28, '123456789', '987654321', 1028, '2023-01-28', 'Payee 28', 170.00, 'Memo 28', 'Signature 28'),
       (29, '123456789', '987654321', 1029, '2023-01-29', 'Payee 29', 172.50, 'Memo 29', 'Signature 29'),
       (30, '123456789', '987654321', 1030, '2023-01-30', 'Payee 30', 175.00, 'Memo 30', 'Signature 30'),
       (31, '123456789', '987654321', 1031, '2023-01-31', 'Payee 31', 177.50, 'Memo 31', 'Signature 31'),
       (32, '123456789', '987654321', 1032, '2023-02-01', 'Payee 32', 180.00, 'Memo 32', 'Signature 32'),
       (33, '123456789', '987654321', 1033, '2023-02-02', 'Payee 33', 182.50, 'Memo 33', 'Signature 33'),
       (34, '123456789', '987654321', 1034, '2023-02-03', 'Payee 34', 185.00, 'Memo 34', 'Signature 34'),
       (35, '123456789', '987654321', 1035, '2023-02-04', 'Payee 35', 187.50, 'Memo 35', 'Signature 35'),
       (36, '123456789', '987654321', 1036, '2023-02-05', 'Payee 36', 190.00, 'Memo 36', 'Signature 36'),
       (37, '123456789', '987654321', 1037, '2023-02-06', 'Payee 37', 192.50, 'Memo 37', 'Signature 37'),
       (38, '123456789', '987654321', 1038, '2023-02-07', 'Payee 38', 195.00, 'Memo 38', 'Signature 38'),
       (39, '123456789', '987654321', 1039, '2023-02-08', 'Payee 39', 197.50, 'Memo 39', 'Signature 39'),
       (40, '123456789', '987654321', 1040, '2023-02-09', 'Payee 40', 200.00, 'Memo 40', 'Signature 40'),
       (41, '123456789', '987654321', 1041, '2023-02-10', 'Payee 41', 202.50, 'Memo 41', 'Signature 41'),
       (42, '123456789', '987654321', 1042, '2023-02-11', 'Payee 42', 205.00, 'Memo 42', 'Signature 42'),
       (43, '123456789', '987654321', 1043, '2023-02-12', 'Payee 43', 207.50, 'Memo 43', 'Signature 43'),
       (44, '123456789', '987654321', 1044, '2023-02-13', 'Payee 44', 210.00, 'Memo 44', 'Signature 44'),
       (45, '123456789', '987654321', 1045, '2023-02-14', 'Payee 45', 212.50, 'Memo 45', 'Signature 45'),
       (46, '123456789', '987654321', 1046, '2023-02-15', 'Payee 46', 215.00, 'Memo 46', 'Signature 46'),
       (47, '123456789', '987654321', 1047, '2023-02-16', 'Payee 47', 217.50, 'Memo 47', 'Signature 47'),
       (48, '123456789', '987654321', 1048, '2023-02-17', 'Payee 48', 220.00, 'Memo 48', 'Signature 48'),
       (49, '123456789', '987654321', 1049, '2023-02-18', 'Payee 49', 222.50, 'Memo 49', 'Signature 49'),
       (50, '123456789', '987654321', 1050, '2023-02-19', 'Payee 50', 225.00, 'Memo 50', 'Signature 50'),
       (51, '123456789', '987654321', 1051, '2023-02-20', 'Payee 51', 227.50, 'Memo 51', 'Signature 51'),
       (52, '123456789', '987654321', 1052, '2023-02-21', 'Payee 52', 230.00, 'Memo 52', 'Signature 52'),
       (53, '123456789', '987654321', 1053, '2023-02-22', 'Payee 53', 232.50, 'Memo 53', 'Signature 53'),
       (54, '123456789', '987654321', 1054, '2023-02-23', 'Payee 54', 235.00, 'Memo 54', 'Signature 54'),
       (55, '123456789', '987654321', 1055, '2023-02-24', 'Payee 55', 237.50, 'Memo 55', 'Signature 55'),
       (56, '123456789', '987654321', 1056, '2023-02-25', 'Payee 56', 240.00, 'Memo 56', 'Signature 56'),
       (57, '123456789', '987654321', 1057, '2023-02-26', 'Payee 57', 242.50, 'Memo 57', 'Signature 57'),
       (58, '123456789', '987654321', 1058, '2023-02-27', 'Payee 58', 245.00, 'Memo 58', 'Signature 58'),
       (59, '123456789', '987654321', 1059, '2023-02-28', 'Payee 59', 247.50, 'Memo 59', 'Signature 59'),
       (60, '123456789', '987654321', 1060, '2023-03-01', 'Payee 60', 250.00, 'Memo 60', 'Signature 60'),
       (61, '123456789', '987654321', 1061, '2023-03-02', 'Payee 61', 252.50, 'Memo 61', 'Signature 61'),
       (62, '123456789', '987654321', 1062, '2023-03-03', 'Payee 62', 255.00, 'Memo 62', 'Signature 62'),
       (63, '123456789', '987654321', 1063, '2023-03-04', 'Payee 63', 257.50, 'Memo 63', 'Signature 63'),
       (64, '123456789', '987654321', 1064, '2023-03-05', 'Payee 64', 260.00, 'Memo 64', 'Signature 64'),
       (65, '123456789', '987654321', 1065, '2023-03-06', 'Payee 65', 262.50, 'Memo 65', 'Signature 65'),
       (66, '123456789', '987654321', 1066, '2023-03-07', 'Payee 66', 265.00, 'Memo 66', 'Signature 66'),
       (67, '123456789', '987654321', 1067, '2023-03-08', 'Payee 67', 267.50, 'Memo 67', 'Signature 67'),
       (68, '123456789', '987654321', 1068, '2023-03-09', 'Payee 68', 270.00, 'Memo 68', 'Signature 68'),
       (69, '123456789', '987654321', 1069, '2023-03-10', 'Payee 69', 272.50, 'Memo 69', 'Signature 69'),
       (70, '123456789', '987654321', 1070, '2023-03-11', 'Payee 70', 275.00, 'Memo 70', 'Signature 70'),
       (71, '123456789', '987654321', 1071, '2023-03-12', 'Payee 71', 277.50, 'Memo 71', 'Signature 71'),
       (72, '123456789', '987654321', 1072, '2023-03-13', 'Payee 72', 280.00, 'Memo 72', 'Signature 72'),
       (73, '123456789', '987654321', 1073, '2023-03-14', 'Payee 73', 282.50, 'Memo 73', 'Signature 73'),
       (74, '123456789', '987654321', 1074, '2023-03-15', 'Payee 74', 285.00, 'Memo 74', 'Signature 74'),
       (75, '123456789', '987654321', 1075, '2023-03-16', 'Payee 75', 287.50, 'Memo 75', 'Signature 75'),
       (76, '123456789', '987654321', 1076, '2023-03-17', 'Payee 76', 290.00, 'Memo 76', 'Signature 76'),
       (77, '123456789', '987654321', 1077, '2023-03-18', 'Payee 77', 292.50, 'Memo 77', 'Signature 77'),
       (78, '123456789', '987654321', 1078, '2023-03-19', 'Payee 78', 295.00, 'Memo 78', 'Signature 78'),
       (79, '123456789', '987654321', 1079, '2023-03-20', 'Payee 79', 297.50, 'Memo 79', 'Signature 79'),
       (80, '123456789', '987654321', 1080, '2023-03-21', 'Payee 80', 300.00, 'Memo 80', 'Signature 80'),
       (81, '123456789', '987654321', 1081, '2023-03-22', 'Payee 81', 302.50, 'Memo 81', 'Signature 81'),
       (82, '123456789', '987654321', 1082, '2023-03-23', 'Payee 82', 305.00, 'Memo 82', 'Signature 82'),
       (83, '123456789', '987654321', 1083, '2023-03-24', 'Payee 83', 307.50, 'Memo 83', 'Signature 83'),
       (84, '123456789', '987654321', 1084, '2023-03-25', 'Payee 84', 310.00, 'Memo 84', 'Signature 84'),
       (85, '123456789', '987654321', 1085, '2023-03-26', 'Payee 85', 312.50, 'Memo 85', 'Signature 85'),
       (86, '123456789', '987654321', 1086, '2023-03-27', 'Payee 86', 315.00, 'Memo 86', 'Signature 86'),
       (87, '123456789', '987654321', 1087, '2023-03-28', 'Payee 87', 317.50, 'Memo 87', 'Signature 87'),
       (88, '123456789', '987654321', 1088, '2023-03-29', 'Payee 88', 320.00, 'Memo 88', 'Signature 88'),
       (89, '123456789', '987654321', 1089, '2023-03-30', 'Payee 89', 322.50, 'Memo 89', 'Signature 89'),
       (90, '123456789', '987654321', 1090, '2023-03-31', 'Payee 90', 325.00, 'Memo 90', 'Signature 90'),
       (91, '123456789', '987654321', 1091, '2024-04-01', 'Payee 91', 327.50, 'Memo 91', 'Signature 91'),
       (92, '123456789', '987654321', 1092, '2024-04-02', 'Payee 92', 330.00, 'Memo 92', 'Signature 92'),
       (93, '123456789', '987654321', 1093, '2024-04-03', 'Payee 93', 332.50, 'Memo 93', 'Signature 93'),
       (94, '123456789', '987654321', 1094, '2024-04-04', 'Payee 94', 335.00, 'Memo 94', 'Signature 94'),
       (95, '123456789', '987654321', 1095, '2024-04-05', 'Payee 95', 337.50, 'Memo 95', 'Signature 95'),
       (96, '123456789', '987654321', 1096, '2024-04-06', 'Payee 96', 340.00, 'Memo 96', 'Signature 96'),
       (97, '123456789', '987654321', 1097, '2024-04-07', 'Payee 97', 342.50, 'Memo 97', 'Signature 97'),
       (98, '123456789', '987654321', 1098, '2024-04-08', 'Payee 98', 345.00, 'Memo 98', 'Signature 98'),
       (99, '123456789', '987654321', 1099, '2024-04-09', 'Payee 99', 347.50, 'Memo 99', 'Signature 99'),
       (100, '123456789', '987654321', 1100, '2024-04-10', 'Payee 100', 350.00, 'Memo 100', 'Signature 100');
