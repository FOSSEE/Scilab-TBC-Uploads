//Example 5.6
//constructing Routh array in scilab
 clear; clc; 
xdel(winsid());
mode(0);

s=%s;

A=s^4+8*s^3+24*s^2+32*s; //characteristic equation
k=poly(0,'k')

routh_t((1)/A,poly(0,'k'))
disp(k=80)

//since from the fourth row of the Routh array 
// the positive value "k=80" will give roots with zero real part.


