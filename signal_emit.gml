/// signal_emit(signalName)
if (!signal_is_initialized()) {
    _signal_error("signal_emit", "Signals were not initialized");
    exit;
}
if (!signal_exists(argument0)) {
    _signal_error("signal_emit", "Signal '" + argument0 + "' doesn't exist");
    exit;
}
var _callbacks, _arguments, _registrars, i;
_callbacks = ds_map_find_value(variable_instance_get(id, _SIGNAL_CALLBACKS_VARNAME), argument0);
_arguments = ds_map_find_value(variable_instance_get(id, _SIGNAL_ARGUMENTS_VARNAME), argument0);
_registrars = ds_map_find_value(variable_instance_get(id, _SIGNAL_REGISTRARS_VARNAME), argument0);
i = ds_list_size(_callbacks) - 1;
while (i >= 0) {
    with (ds_list_find_value(_registrars, i)) {
        if (ds_list_find_value(_callbacks, i)< 0) {
            show_debug_message(
                "Event '" + argument0 + "' in " + _signal_instance_string(id) +
                " - Event user " + string((ds_list_find_value(_callbacks, i)+ 1) * -1) + " in " + _signal_instance_string(ds_list_find_value(_registrars,i)));
            event_user((ds_list_find_value(_callbacks, i)+ 1) * -1);
        } else {
            if (!script_exists(ds_list_find_value(_callbacks,i))) {
                show_error(
                    "Event '" + argument0 + "' in " + _signal_instance_string(id) +
                    " - Script '" + string(ds_list_find_value(_callbacks, i)) + "' in " + _signal_instance_string(ds_list_find_value(_registrars,i)) + " DID NOT EXIST", false);
            } else {
                show_debug_message(
                    "Event '" + argument0 + "' in " + _signal_instance_string(id) +
                    " - Script '" + script_get_name(ds_list_find_value(_callbacks, i)) + "' in " + _signal_instance_string(ds_list_find_value(_registrars,i)));
                _signal_script_execute_listarg(ds_list_find_value(_callbacks, i), ds_list_find_value(_arguments, i));
            }
        }
    }
    i -= 1;
}
