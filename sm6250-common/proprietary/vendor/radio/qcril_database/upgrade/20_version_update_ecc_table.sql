/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 20);
DELETE FROM qcril_emergency_source_mcc_table where MCC = '639' AND NUMBER = '999';
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '639' AND NUMBER = '999';
INSERT INTO qcril_emergency_source_mcc_table VALUES('639','999','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('639','999','','');

COMMIT TRANSACTION;
