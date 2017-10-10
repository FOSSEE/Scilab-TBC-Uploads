//Example 1.4//
//decimal to octal//
clc
//clears the command window//
clear 
// clears the variables//
q =0;
b =0;
a= 73.75
// Enter the decimal number//
format ( 'v' ,18) 
//increasing the precision to 18
a= floor (a);
h= dec2oct (a);
printf ("The hexadecimal equivalent is = %s" ,h)