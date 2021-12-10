scripts:print_log("Laduje plugin arkadia-oswajanie")

oswajanie = {
  db = {},
  alias = {},
  trigger = {},
  core = {},
  tmp = { animal = {} },
  config = {},
  version = "0.5"
}
mydb_oswajanie = nil
oswajanie.config.recovery_time = 20 -- in min
oswajanie.config.feeding_time = 120 -- in hours