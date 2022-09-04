/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 17);

DELETE FROM qcril_emergency_source_mcc_table where MCC = '730' AND NUMBER = '112';
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('730','112','','');
DELETE FROM qcril_emergency_source_mcc_table where MCC = '730' AND NUMBER = '911';
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('730','911','','');
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '02' AND NUMBER = '131';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '02' AND NUMBER = '132';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '730' AND MNC = '03' AND NUMBER = '133';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '730' AND MNC = '23' AND NUMBER = '133';
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '732' AND NUMBER = '133';
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('732','133','','');
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '732' AND MNC = '10' AND NUMBER = '112';
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('732','10','112','','');
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '732' AND MNC = '10' AND NUMBER = '133';
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('732','10','133','','');
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '732' AND MNC = '10' AND NUMBER = '911';
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('732','10','911','','');

COMMIT TRANSACTION;
