/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 24);

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '272' AND MNC ='112';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '272' AND MNC ='999';

DELETE FROM qcril_emergency_source_mcc_table where MCC = '457' ;
INSERT INTO  qcril_emergency_source_mcc_table  VALUES('457','1190','','');
INSERT INTO  qcril_emergency_source_mcc_table  VALUES('457','1191','','');
INSERT INTO  qcril_emergency_source_mcc_table  VALUES('457','1195','','');
INSERT INTO  qcril_emergency_source_mcc_table  VALUES('457','1199','','');
INSERT INTO  qcril_emergency_source_mcc_table  VALUES('457','1623','','');
INSERT INTO  qcril_emergency_source_mcc_table  VALUES('457','1420','','');
INSERT INTO  qcril_emergency_source_mcc_table  VALUES('457','1169','','');
INSERT INTO  qcril_emergency_source_mcc_table  VALUES('457','191','','');
INSERT INTO  qcril_emergency_source_mcc_table  VALUES('457','192','','');
INSERT INTO  qcril_emergency_source_mcc_table  VALUES('457','199','','');

DELETE FROM qcril_emergency_source_voice_table where MCC = '457' ;
INSERT INTO   qcril_emergency_source_voice_table  VALUES('457','1190','','full');
INSERT INTO   qcril_emergency_source_voice_table  VALUES('457','1191','','full');
INSERT INTO   qcril_emergency_source_voice_table  VALUES('457','1195','','full');
INSERT INTO  qcril_emergency_source_voice_table  VALUES('457','1199','','full');
INSERT INTO  qcril_emergency_source_voice_table  VALUES('457','1623','','full');
INSERT INTO  qcril_emergency_source_voice_table  VALUES('457','1420','','full');
INSERT INTO  qcril_emergency_source_voice_table  VALUES('457','1169','','full');

DELETE FROM qcril_emergency_source_mcc_table  where MCC = '425'  AND NUMBER = '911';
DELETE FROM qcril_emergency_source_mcc_table  where MCC = '425'  AND NUMBER = '112';
INSERT INTO  qcril_emergency_source_mcc_table  VALUES('425','911','','');
INSERT INTO  qcril_emergency_source_mcc_table  VALUES('425','112','','');

DELETE FROM qcril_emergency_source_hard_mcc_table  where MCC = '425'  AND NUMBER = '911';
DELETE FROM qcril_emergency_source_hard_mcc_table where  MCC = '425' AND  NUMBER = '112';
INSERT INTO  qcril_emergency_source_hard_mcc_table  VALUES('425','911','','');
INSERT INTO  qcril_emergency_source_hard_mcc_table  VALUES('425','112','','');
COMMIT TRANSACTION;
