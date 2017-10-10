//Example 3.11
//Computing DC gain of the system.

clear;
clc;
//------------------------------------------------------------------
//Transfer Function
s=poly(0,'s');
num=3*(s+2);
den=(s^2+2*s+10);
Ys=syslin('c',num/den);

//The DC gain of the system Y(s) as s-->0 is
DC_Gain=horner(Ys,0)
disp(DC_Gain,"The DC gain of the system is:")
//------------------------------------------------------------------
