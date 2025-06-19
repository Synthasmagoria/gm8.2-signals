/// signal_is_initialized()
return
    variable_instance_exists(id, _SIGNAL_CALLBACKS_VARNAME) ||
    variable_instance_exists(id, _SIGNAL_ARGUMENTS_VARNAME) ||
    variable_instance_exists(id, _SIGNAL_REGISTRARS_VARNAME);
