// example 1.5/ /
// decimal to hexadecimal conversion//
clc
// clears the screen //
clear
//clears already existing variables //
q =0;
b =0;
a= 82.25
// Enter the decimal number//
format ( 'v' ,18) 
//increasing the precision to 18
a= floor (a);
h= dec2hex (a);
// decimal to hexadecimal conversion //
disp ('conversion of decimal given no to its hexadecimal form is :' )
disp (h)