///_signal_script_execute_listarg(script, list)
switch (ds_list_size(argument1)) {
    case 0:
    return script_execute(argument0);
    case 1:
    return script_execute(argument0, ds_list_find_value(argument1, 0));
    case 2:
    return script_execute(
        argument0,
        ds_list_find_value(argument1, 0),
        ds_list_find_value(argument1, 1));
    case 3:
    return script_execute(
        argument0,
        ds_list_find_value(argument1, 0),
        ds_list_find_value(argument1, 1),
        ds_list_find_value(argument1, 2));
    case 4:
    return script_execute(
        argument0,
        ds_list_find_value(argument1, 0),
        ds_list_find_value(argument1, 1),
        ds_list_find_value(argument1, 2),
        ds_list_find_value(argument1, 3));
    case 5:
    return script_execute(
        argument0,
        ds_list_find_value(argument1, 0),
        ds_list_find_value(argument1, 1),
        ds_list_find_value(argument1, 2),
        ds_list_find_value(argument1, 3),
        ds_list_find_value(argument1, 4));
    case 6:
    return script_execute(
        argument0,
        ds_list_find_value(argument1, 0),
        ds_list_find_value(argument1, 1),
        ds_list_find_value(argument1, 2),
        ds_list_find_value(argument1, 3),
        ds_list_find_value(argument1, 4),
        ds_list_find_value(argument1, 5));
    case 7:
    return script_execute(
        argument0,
        ds_list_find_value(argument1, 0),
        ds_list_find_value(argument1, 1),
        ds_list_find_value(argument1, 2),
        ds_list_find_value(argument1, 3),
        ds_list_find_value(argument1, 4),
        ds_list_find_value(argument1, 5),
        ds_list_find_value(argument1, 6));
    case 8:
    return script_execute(
        argument0,
        ds_list_find_value(argument1, 0),
        ds_list_find_value(argument1, 1),
        ds_list_find_value(argument1, 2),
        ds_list_find_value(argument1, 3),
        ds_list_find_value(argument1, 4),
        ds_list_find_value(argument1, 5),
        ds_list_find_value(argument1, 6),
        ds_list_find_value(argument1, 7));
    case 9:
    return script_execute(
        argument0,
        ds_list_find_value(argument1, 0),
        ds_list_find_value(argument1, 1),
        ds_list_find_value(argument1, 2),
        ds_list_find_value(argument1, 3),
        ds_list_find_value(argument1, 4),
        ds_list_find_value(argument1, 5),
        ds_list_find_value(argument1, 6),
        ds_list_find_value(argument1, 7),
        ds_list_find_value(argument1, 8));
    case 10:
    return script_execute(
        argument0,
        ds_list_find_value(argument1, 0),
        ds_list_find_value(argument1, 1),
        ds_list_find_value(argument1, 2),
        ds_list_find_value(argument1, 3),
        ds_list_find_value(argument1, 4),
        ds_list_find_value(argument1, 5),
        ds_list_find_value(argument1, 6),
        ds_list_find_value(argument1, 7),
        ds_list_find_value(argument1, 8),
        ds_list_find_value(argument1, 9));
    case 11:
    return script_execute(
        argument0,
        ds_list_find_value(argument1, 0),
        ds_list_find_value(argument1, 1),
        ds_list_find_value(argument1, 2),
        ds_list_find_value(argument1, 3),
        ds_list_find_value(argument1, 4),
        ds_list_find_value(argument1, 5),
        ds_list_find_value(argument1, 6),
        ds_list_find_value(argument1, 7),
        ds_list_find_value(argument1, 8),
        ds_list_find_value(argument1, 9),
        ds_list_find_value(argument1, 10));
    case 12:
    return script_execute(
        argument0,
        ds_list_find_value(argument1, 0),
        ds_list_find_value(argument1, 1),
        ds_list_find_value(argument1, 2),
        ds_list_find_value(argument1, 3),
        ds_list_find_value(argument1, 4),
        ds_list_find_value(argument1, 5),
        ds_list_find_value(argument1, 6),
        ds_list_find_value(argument1, 7),
        ds_list_find_value(argument1, 8),
        ds_list_find_value(argument1, 9),
        ds_list_find_value(argument1, 10),
        ds_list_find_value(argument1, 11));
    case 13:
    return script_execute(
        argument0,
        ds_list_find_value(argument1, 0),
        ds_list_find_value(argument1, 1),
        ds_list_find_value(argument1, 2),
        ds_list_find_value(argument1, 3),
        ds_list_find_value(argument1, 4),
        ds_list_find_value(argument1, 5),
        ds_list_find_value(argument1, 6),
        ds_list_find_value(argument1, 7),
        ds_list_find_value(argument1, 8),
        ds_list_find_value(argument1, 9),
        ds_list_find_value(argument1, 10),
        ds_list_find_value(argument1, 11),
        ds_list_find_value(argument1, 12));
    case 14:
    return script_execute(
        argument0,
        ds_list_find_value(argument1, 0),
        ds_list_find_value(argument1, 1),
        ds_list_find_value(argument1, 2),
        ds_list_find_value(argument1, 3),
        ds_list_find_value(argument1, 4),
        ds_list_find_value(argument1, 5),
        ds_list_find_value(argument1, 6),
        ds_list_find_value(argument1, 7),
        ds_list_find_value(argument1, 8),
        ds_list_find_value(argument1, 9),
        ds_list_find_value(argument1, 10),
        ds_list_find_value(argument1, 11),
        ds_list_find_value(argument1, 12),
        ds_list_find_value(argument1, 13));
    case 15:
    return script_execute(
        argument0,
        ds_list_find_value(argument1, 0),
        ds_list_find_value(argument1, 1),
        ds_list_find_value(argument1, 2),
        ds_list_find_value(argument1, 3),
        ds_list_find_value(argument1, 4),
        ds_list_find_value(argument1, 5),
        ds_list_find_value(argument1, 6),
        ds_list_find_value(argument1, 7),
        ds_list_find_value(argument1, 8),
        ds_list_find_value(argument1, 9),
        ds_list_find_value(argument1, 10),
        ds_list_find_value(argument1, 11),
        ds_list_find_value(argument1, 12),
        ds_list_find_value(argument1, 13),
        ds_list_find_value(argument1, 14));
}
return undefined;
