/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 18);

DELETE FROM qcril_emergency_source_voice_table where MCC = '456' AND NUMBER = '117';
INSERT INTO "qcril_emergency_source_voice_table" VALUES('456','117','','full');

DELETE FROM qcril_emergency_source_voice_table where MCC = '456' AND NUMBER = '119';
INSERT INTO "qcril_emergency_source_voice_table" VALUES('456','119','','full');

COMMIT TRANSACTION;
