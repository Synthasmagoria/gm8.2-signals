/// signal_add(name)
if (!signal_is_initialized()) {
    _signal_error("signal_add", "Signals were not initialized");
    exit;
}
if (signal_exists(argument0)) {
    _signal_error("signal_add", "Signal '" + argument0 + "' already exists");
    exit;
}
ds_map_add(variable_instance_get(id, _SIGNAL_CALLBACKS_VARNAME), argument0, ds_list_create());
ds_map_add(variable_instance_get(id, _SIGNAL_ARGUMENTS_VARNAME), argument0, ds_list_create());
ds_map_add(variable_instance_get(id, _SIGNAL_REGISTRARS_VARNAME), argument0, ds_list_create());
