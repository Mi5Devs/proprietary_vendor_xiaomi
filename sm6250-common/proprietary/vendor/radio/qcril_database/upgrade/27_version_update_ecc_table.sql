/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 27);

DELETE FROM qcril_emergency_source_voice_mcc_mnc_table  where MCC = '401' AND NUMBER = '102';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table  where MCC = '401' AND NUMBER = '101';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table  where MCC = '401' AND NUMBER = '103';

DELETE FROM qcril_emergency_source_voice_table where MCC = '425';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '425';
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','03','100','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','03','101','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','03','102','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','03','1221','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','01','100','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','01','101','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','01','102','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','01','1221','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','02','100','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','02','101','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','02','102','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','02','1221','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','77','100','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','77','101','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','77','102','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','77','1221','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','09','100','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','09','101','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','09','102','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','09','1221','','');

DELETE FROM qcril_emergency_source_escv_nw_table  where MCC = '414';
DELETE FROM qcril_emergency_source_voice_table where MCC = '414';
INSERT INTO "qcril_emergency_source_voice_table" VALUES('414','191','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('414','192','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('414','199','','full');
DELETE FROM qcril_emergency_source_hard_mcc_table  where MCC = '722' AND NUMBER ='100';
DELETE FROM qcril_emergency_source_hard_mcc_table  where MCC = '722' AND NUMBER ='107';
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('722','100','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('722','107','','');


DELETE FROM qcril_emergency_source_mcc_table  where MCC = '452' AND NUMBER ='113';
DELETE FROM qcril_emergency_source_mcc_table  where MCC = '452' AND NUMBER ='114';
DELETE FROM qcril_emergency_source_mcc_table  where MCC = '452' AND NUMBER ='115';
INSERT INTO  qcril_emergency_source_mcc_table  VALUES('452','113','','');
INSERT INTO  qcril_emergency_source_mcc_table  VALUES('452','114','','');
INSERT INTO  qcril_emergency_source_mcc_table  VALUES('452','115','','');

DELETE FROM qcril_emergency_source_voice_mcc_mnc_table  where MCC = '452' AND NUMBER = '113';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table  where MCC = '452' AND NUMBER = '114';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table  where MCC = '452' AND NUMBER = '115';
INSERT INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('452','01','113','','');
INSERT INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('452','01','114','','');
INSERT INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('452','01','115','','');

DELETE FROM qcril_emergency_source_voice_table  where MCC = '604' AND NUMBER = '15';
DELETE FROM qcril_emergency_source_voice_table  where MCC = '604' AND NUMBER = '19';
DELETE FROM qcril_emergency_source_voice_table  where MCC = '604' AND NUMBER = '177';
DELETE FROM qcril_emergency_source_voice_table  where MCC = '604' AND NUMBER = '150';
DELETE FROM qcril_emergency_source_voice_table  where MCC = '604' AND NUMBER = '190';
INSERT INTO "qcril_emergency_source_voice_table" VALUES('604','15','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('604','19','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('604','177','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('604','150','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('604','190','','full');

COMMIT TRANSACTION;
