/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 23);
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '466';
DELETE FROM qcril_emergency_source_mcc_table where MCC = '466';
COMMIT TRANSACTION;
