/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 25);


DELETE FROM qcril_emergency_source_mcc_table where MCC = '456' AND NUMBER  = '117';
DELETE FROM qcril_emergency_source_mcc_table where MCC = '456' AND NUMBER  = '118';
DELETE FROM qcril_emergency_source_mcc_table where MCC = '456' AND NUMBER  = '119';
DELETE FROM qcril_emergency_source_voice_table where MCC = '456';

DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '456' ;
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('456','01','117','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('456','01','118','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('456','01','119','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('456','06','117','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('456','06','118','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('456','06','119','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('456','08','117','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('456','08','118','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('456','08','119','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('456','11','117','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('456','11','118','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('456','11','119','','');

COMMIT TRANSACTION;