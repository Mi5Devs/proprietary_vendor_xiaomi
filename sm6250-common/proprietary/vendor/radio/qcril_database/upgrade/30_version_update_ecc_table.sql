/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 30);

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '257' AND  MNC = '01' AND NUMBER = '102';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '257' AND  MNC = '01' AND NUMBER = '103';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '257' AND  MNC = '01' AND NUMBER = '104';
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('257','01','102','','limited');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('257','01','103','','limited');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('257','01','104','','limited');

DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '257' AND  MNC = '01' AND NUMBER = '102';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '257' AND  MNC = '01' AND NUMBER = '103';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '257' AND  MNC = '01' AND NUMBER = '104';
INSERT INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('257','01','102','','full');
INSERT INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('257','01','103','','full');
INSERT INTO "qcril_emergency_source_voice_mcc_mnc_table" VALUES('257','01','104','','full');

COMMIT TRANSACTION;
