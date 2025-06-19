///signal_connect(id, signalName, callback, argList, registrar)
if (instance_exists(argument0)) {
    with (argument0) {
        if (!signal_is_initialized()) {
            _signal_error("signal_connect", "Signals were not initialized");
            exit;
        }
        if (!signal_exists(argument1)) {
            _signal_error("signal_connect", "Signal '" + argument1 + "' doesn't exist");
            exit;
        }
    }
} else {
    show_error("signal_connect: Instance with id '" + string(argument0) + "' doesn't exist", false);
}

var _callbacks, _arguments, _registrars;
_callbacks = ds_map_find_value(variable_instance_get(argument0, MC_EVENT_CALLBACKS_VARNAME), argument1);
_arguments = ds_map_find_value(variable_instance_get(argument0, MC_EVENT_ARGUMENTS_VARNAME), argument1);
_registrars = ds_map_find_value(variable_instance_get(argument0, MC_EVENT_REGISTRARS_VARNAME), argument1);
ds_list_add(_callbacks, argument2);
ds_list_add(_arguments, argument3);
ds_list_add(_registrars, argument4);
