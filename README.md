## How to use
1) Drop scripts into your project
2) Define constants _SIGNAL_CALLBACKS_VARNAME, _SIGNAL_ARGUMENTS_VARNAME, _SIGNAL_REGISTRARS_VARNAME to a string that is difficult to accidentally use as a variable name.
e.g. "_@signal_callbacks" (The '@' helps with preventing accidental usage)
3) Use the signals functions in your instances
Initialize with `signal_init()`
Then add a signal to an instance using `signal_add()`
Connect to the signal from another instance with `signal_connect()` or `signal_connect_user_event()`
Emit the signal in from the instance owning the signal with `signal_emit()`

![setup](https://github.com/user-attachments/assets/bb22e735-876e-4074-9798-bd79ace6fea8)

For example usage see: < youtube video in progress >
