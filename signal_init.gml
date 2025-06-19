///signal_init()
if (signal_is_initialized()) {
    show_error("signal_init: Signals have previously been initialized", false);
    exit;
}
variable_instance_set(id, _SIGNAL_CALLBACKS_VARNAME, ds_map_create());
variable_instance_set(id, _SIGNAL_ARGUMENTS_VARNAME, ds_map_create());
variable_instance_set(id, _SIGNAL_REGISTRARS_VARNAME, ds_map_create());
