///signal_connect_user_event(id, signalName, userEvent, registrar)
if (instance_exists(argument0)) {
    with (argument0) {
        if (!signal_is_initialized()) {
            _signal_error("signal_connect_user_event", "Signals were not initialized");
            exit;
        }
        if (!signal_exists(argument1)) {
            _signal_error("signal_connect_user_event", "Signal '" + argument1 + "' doesn't exist");
            exit;
        }
    }
} else {
    show_error("signal_connect_user_event: Instance " + _signal_instance_string(argument0) + " ' doesn't exist", false);
}
var _callbacks, _arguments, _registrars;
_callbacks = ds_map_find_value(variable_instance_get(argument0, MC_EVENT_CALLBACKS_VARNAME), argument1);
_arguments = ds_map_find_value(variable_instance_get(argument0, MC_EVENT_ARGUMENTS_VARNAME), argument1);
_registrars = ds_map_find_value(variable_instance_get(argument0, MC_EVENT_REGISTRARS_VARNAME), argument1);
ds_list_add(_callbacks, argument2 * -1 - 1);
ds_list_add(_arguments, ds_list_create());
ds_list_add(_registrars, argument3);
