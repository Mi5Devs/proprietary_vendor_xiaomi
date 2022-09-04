/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 16);

DELETE FROM qcril_emergency_source_mcc_table where MCC = '429' AND NUMBER = '102';
DELETE FROM qcril_emergency_source_mcc_table where MCC = '429' AND NUMBER = '103';
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '429' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '429' AND NUMBER = '101';
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '429' AND NUMBER = '102';
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '429' AND NUMBER = '103';
DELETE FROM qcril_emergency_source_mcc_table where MCC = '429' AND NUMBER = '911';
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('429','911','','');
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '429' AND NUMBER = '911';
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('429','911','','');

COMMIT TRANSACTION;
