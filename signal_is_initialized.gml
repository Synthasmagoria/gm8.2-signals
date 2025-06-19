/// signal_is_initialized()
return
    variable_instance_exists(id, MC_EVENT_CALLBACKS_VARNAME) ||
    variable_instance_exists(id, MC_EVENT_ARGUMENTS_VARNAME) ||
    variable_instance_exists(id, MC_EVENT_REGISTRARS_VARNAME);
