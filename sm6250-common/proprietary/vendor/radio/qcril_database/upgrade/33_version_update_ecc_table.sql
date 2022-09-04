/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 33);

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '510' AND MNC = '09' AND NUMBER = '119';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '510' AND MNC = '09' AND NUMBER = '129';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '510' AND MNC = '01' AND NUMBER = '129';
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('510','09','119','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('510','09','129','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('510','01','129','','');

COMMIT TRANSACTION;
