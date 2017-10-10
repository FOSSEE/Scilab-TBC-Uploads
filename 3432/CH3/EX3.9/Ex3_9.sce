//Example 3.9
//Computing final value (use of final value theorem).

clear;
clc;

//------------------------------------------------------------------

//Computing final value (use of final value theorem)
// Output of the system
s=poly(0,'s');
num=3*(s+2);
den=s*(s^2+2*s+10);
Ys=syslin('c',num/den);


//final value theorem, lim s-->0 in s*Y(s)

Y_final=horner(s*Ys,0)
disp(Y_final,"The final value of the output y is:")

//------------------------------------------------------------------
