//exmaple 13.1//
clc
//clears the screen//
clear
//clears all existing variables//
a=31;
//rising edge//
b=241;
//falling edge//
c=8;
//in MHz//
t=1/c;
pw=(b-a)*t;
//pulse width//
disp(pw,'pulse width measured by microcontroller(in microsec) is :')