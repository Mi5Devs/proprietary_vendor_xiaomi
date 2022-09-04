/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 28);

DELETE FROM qcril_emergency_source_mcc_table where MCC = '520' AND NUMBER = '191';
INSERT INTO qcril_emergency_source_mcc_table VALUES('520','191','','limited');
DELETE FROM qcril_emergency_source_mcc_table where MCC = '520' AND NUMBER = '1669';
INSERT INTO qcril_emergency_source_mcc_table VALUES('520','1669','','limited');
DELETE FROM qcril_emergency_source_mcc_table where MCC = '520' AND NUMBER = '199';
INSERT INTO qcril_emergency_source_mcc_table VALUES('520','199','','limited');
DELETE FROM qcril_emergency_source_mcc_table where MCC = '520' AND NUMBER = '112';
INSERT INTO qcril_emergency_source_mcc_table VALUES('520','112','','limited');
DELETE FROM qcril_emergency_source_mcc_table where MCC = '520' AND NUMBER = '911';
INSERT INTO qcril_emergency_source_mcc_table VALUES('520','911','','limited');

COMMIT TRANSACTION;
