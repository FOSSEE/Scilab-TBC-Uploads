//EX3_1:Convert to SOP
//(A + B + C')(A + B +D)(A + B + E)(A + D' + E)(A' + C)

//clears the screen
clc

//clears already existing variables
clear

disp('(A + B + C'')(A + B + D)(A + B + E)(A + D'' + E)(A'' + C)')
disp('= (A + B + C''D)(A + B + E)(A + D'' + E)(A'' + C)')
disp('= (A + B + C''DE)[AC + A''(D'' + E)]')
disp('= AC + ABC  + A''BD'' +A''BE + A''C''DE')
disp('= AC + A''BD'' + A''BE + A''C''DE')
