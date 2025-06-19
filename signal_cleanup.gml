/// signal_cleanup()
if (!signal_is_initialized()) {
    show_error("signal_cleanup: Signals were not initialized", false);
    exit;
}
var _map, _key, _keyNumber;
/*
    NOTE: ds_map_find_first and ds_map_find_next can be slow.
    Create an iterable map if this causes performance problems
*/
_map = variable_instance_get(id, _SIGNAL_CALLBACKS_VARNAME);
_keyIndex = ds_map_size(_map) - 1;
_key = ds_map_find_first(_map);
while (_keyIndex >= 0) {
    ds_list_destroy(ds_map_find_value(_map, _key));
    _key = ds_map_find_next(_map, _key);
    _keyIndex -= 1;
}
ds_map_destroy(_map);

_map = variable_instance_get(id, _SIGNAL_ARGUMENTS_VARNAME);
_keyIndex = ds_map_size(_map) - 1;
_key = ds_map_find_first(_map);
var _args, i;
while (_keyIndex >= 0) {
    _args = ds_map_find_value(_map, _key);
    i = ds_list_size(_args) - 1;
    while (i >= 0) {
        ds_list_destroy(ds_list_find_value(_args, i));
        i -= 1;
    }
    ds_list_destroy(_args);
    _key = ds_map_find_next(_map, _key);
    _keyIndex -= 1;
}
ds_map_destroy(_map);

_map = variable_instance_get(id, _SIGNAL_REGISTRARS_VARNAME);
_keyIndex = ds_map_size(_map) - 1;
_key = ds_map_find_first(_map);
while (_keyIndex >= 0) {
    ds_list_destroy(ds_map_find_value(_map, _key));
    _key = ds_map_find_next(_map, _key);
    _keyIndex -= 1;
}
ds_map_destroy(_map);
