/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 29);

DELETE FROM qcril_emergency_source_escv_nw_table where MCC = '414' AND NUMBER = '199' AND ESCV = 1;
DELETE FROM qcril_emergency_source_escv_nw_table where MCC = '414' AND NUMBER = '192' AND ESCV = 2;
DELETE FROM qcril_emergency_source_escv_nw_table where MCC = '414' AND NUMBER = '191' AND ESCV = 4;

INSERT INTO qcril_emergency_source_escv_nw_table VALUES('414','','199',1);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('414','','192',2);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('414','','191',4);

DELETE FROM qcril_emergency_source_mcc_table where MCC = '222';

INSERT INTO qcril_emergency_source_mcc_table VALUES('222','112','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('222','911','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('222','999','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('222','08','','');

COMMIT TRANSACTION;
