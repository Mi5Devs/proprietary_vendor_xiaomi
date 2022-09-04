/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 36);

DELETE FROM  qcril_emergency_source_mcc_table where MCC = '213';


INSERT INTO "qcril_emergency_source_mcc_table" VALUES('213','110','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('213','115','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('213','116','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('213','117','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('213','118','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('213','175','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('213','181','','');


COMMIT TRANSACTION;
