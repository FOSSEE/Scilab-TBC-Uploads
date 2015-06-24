// Example 5.3 
 // Constructing Routh array in scilab
  
clear;clc
xdel(winsid());
mode(0);

s=%s;

A=s^4+4*s^3+4*s^2+3*s;  // characteristic equation after simplification

k=poly(0,'k')

routh_t((1)/A,poly(0,'k'))

//system will construct Routh array and 
//from Routh array "k" must lie between 0&39/16 i.e (0<k<2.4375)

disp("0<k<39/16")
