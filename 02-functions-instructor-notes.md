# 02-functions Instructor notes

### After flashing the first function for temperature conversion:

- Demonstrate default values: show how convert_fahr() doesn't work. 
- Change function to have default value for the temperature (e.g., `temp = 0` 
and `to = "celcius"`, and show how now `convert_fahr()` works.
- Use this to expand on using `match.arg` coming up.

### After expendable section

- Demonstrate scoping:
    -  Show that there is no variable `to`, `temp` or `res` in the global 
    environment. 
    - Then assign a value to the variable `to` or `res` and show that it 
    doesn't affect the behavior of the function.