///MCEventUnregisterCallback(id, signalName, registrar)
if (instance_exists(argument0)) {
    with (argument0) {
        if (!signal_is_initialized()) {
            _signal_error("signal_disconnect", "Signals were not initialized");
            exit;
        }
        if (!signal_exists(argument1)) {
            _signal_error("signal_disconnect", "Signal '" + argument1 + "' doesn't exist");
            exit;
        }
    }
} else {
    show_error("signal_disconnect: Instance with id '" + string(argument0) + "' doesn't exist", false);
}

var _callbacks, _arguments, _registrars;
_callbacks = ds_map_find_value(variable_instance_get(argument0, MC_EVENT_CALLBACKS_VARNAME), argument1);
_arguments = ds_map_find_value(variable_instance_get(argument0, MC_EVENT_ARGUMENTS_VARNAME), argument1);
_registrars = ds_map_find_value(variable_instance_get(argument0, MC_EVENT_REGISTRARS_VARNAME), argument1);

var _index; _index = ds_list_find_index(_registrars, argument2);
if (_index == -1) {
    _signal_error("signal_disconnect", "Provided registrar wasn't connected to signal '" + argument1 + "'");
}
while (_index != -1) {
    ds_list_delete(_callbacks, _index);
    ds_list_delete(_arguments, _index);
    ds_list_delete(_registrars, _index);
    _index = ds_list_find_index(_registrars, argument2);
}
