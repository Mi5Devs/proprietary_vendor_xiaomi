/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 34);

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '510' AND MNC = '11' AND NUMBER = '115';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '510' AND MNC = '11' AND NUMBER = '119';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '510' AND MNC = '89' AND NUMBER = '115';
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('510','11','115','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('510','11','119','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('510','89','115','','');

COMMIT TRANSACTION;
