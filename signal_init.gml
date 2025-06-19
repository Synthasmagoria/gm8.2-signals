///signal_init()
if (signal_is_initialized()) {
    show_error("signal_init: Signals have previously been initialized", false);
    exit;
}
variable_instance_set(id, MC_EVENT_CALLBACKS_VARNAME, ds_map_create());
variable_instance_set(id, MC_EVENT_ARGUMENTS_VARNAME, ds_map_create());
variable_instance_set(id, MC_EVENT_REGISTRARS_VARNAME, ds_map_create());
