//Example No. 12_06
//Booles's Five-Point formula
//Pg No. 387
clear ;close ;clc ;

deff('F = f(x)','F = sqrt( sin(x) )')
x0 = 0;
xb = %pi/2 ;
n = 4 ;
h = (xb - x0)/n
Ib = 2*h*(7*f(x0) + 32*f(x0+h) + 12*f(x0 + 2*h) + 32*f(x0+3*h) + 7*f(x0+4*h))/45;
disp(Ib,'Ib = ')