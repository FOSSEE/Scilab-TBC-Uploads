//Example 3.10

//Computing final value for unstable system to show the incorrect 
// use of final value theorem.
clear;
clc;
//------------------------------------------------------------------
s=poly(0,'s');
num=3;
den=s*(s-2);
Ys=syslin('c',num/den);

//final value theorem, lim s-->0 in s*Y(s)
Y_final=horner(s*Ys,0);
disp(Y_final,"The final value of the output y is:");
disp('The final value computed is incorrect as the system...
 response is unbounded');
//------------------------------------------------------------------
