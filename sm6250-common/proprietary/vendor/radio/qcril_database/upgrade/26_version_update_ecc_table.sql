/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 26);

DELETE FROM qcril_emergency_source_mcc_table where MCC = '250';
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '250';

DELETE FROM qcril_emergency_source_voice_table where MCC = '250';
INSERT INTO qcril_emergency_source_voice_table VALUES('250','101','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('250','102','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('250','103','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('250','104','','full');

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '232';
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('232','05','999','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('232','10','999','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('232','14','999','','');

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '732' AND MNC = '103' AND NUMBER = '123';
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('732','103','123','','');
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '732' AND MNC = '111' AND NUMBER = '123';
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('732','111','123','','');

DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '284';
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('284','03','150','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('284','03','160','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('284','03','166','','');

DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '414';
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('414','01','191','','4');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('414','01','192','','2');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('414','01','199','','1');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('414','09','191','','4');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('414','09','192','','2');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('414','09','199','','1');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('414','06','191','','4');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('414','06','192','','2');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('414','06','199','','1');

COMMIT TRANSACTION;
