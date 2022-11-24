ALTER TABLE inputs
  MODIFY COLUMN max_chg_curr DOUBLE,
  MODIFY COLUMN max_dischg_curr DOUBLE,
  MODIFY COLUMN charge_volt_ref DOUBLE,
  MODIFY COLUMN dischg_cut_volt DOUBLE,
  MODIFY COLUMN bat_status_0 DOUBLE,
  MODIFY COLUMN bat_status_1 DOUBLE,
  MODIFY COLUMN bat_status_2 DOUBLE,
  MODIFY COLUMN bat_status_3 DOUBLE,
  MODIFY COLUMN bat_status_4 DOUBLE,
  MODIFY COLUMN bat_status_5 DOUBLE,
  MODIFY COLUMN bat_status_6 DOUBLE,
  MODIFY COLUMN bat_status_7 DOUBLE,
  MODIFY COLUMN bat_status_8 DOUBLE,
  MODIFY COLUMN bat_status_9 DOUBLE,
  MODIFY COLUMN bat_status_inv DOUBLE,
  MODIFY COLUMN bat_count DOUBLE,
  MODIFY COLUMN bat_capacity DOUBLE,
  MODIFY COLUMN bat_current DOUBLE,
  MODIFY COLUMN bms_event_1 INTEGER,
  MODIFY COLUMN bms_event_2 INTEGER,
  MODIFY COLUMN max_cell_voltage DOUBLE,
  MODIFY COLUMN min_cell_voltage DOUBLE,
  MODIFY COLUMN max_cell_temp DOUBLE,
  MODIFY COLUMN min_cell_temp DOUBLE,
  MODIFY COLUMN bms_fw_update_state INTEGER,
  MODIFY COLUMN cycle_count INTEGER,
  MODIFY COLUMN vbat_inv INTEGER;

ALTER TABLE inputs
  ALTER COLUMN bms_event_1 DROP DEFAULT,
  ALTER COLUMN bms_event_2 DROP DEFAULT,
  ALTER COLUMN max_cell_voltage DROP DEFAULT,
  ALTER COLUMN min_cell_voltage DROP DEFAULT,
  ALTER COLUMN max_cell_temp DROP DEFAULT,
  ALTER COLUMN min_cell_temp DROP DEFAULT,
  ALTER COLUMN bms_fw_update_state DROP DEFAULT,
  ALTER COLUMN bat_current DROP DEFAULT,
  ALTER COLUMN cycle_count DROP DEFAULT,
  ALTER COLUMN vbat_inv DROP DEFAULT;