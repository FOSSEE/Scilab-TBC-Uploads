//Chapter-13, Example 13.11, Page 391
//=============================================================================
clc
clear
//INPUT DATA
Ib=100*10^-6;//base current in A
Ic=2*10^-3;//collector current in A
Ib1=125*10^-6;//base current in A when change in Ib is 25 A
Ic1=2.6*10^-3;//collector current in A when change in Ic is 0.6 A
//CALCULATIONS
b=Ic/Ib;//common-emitter DC current gain
a=(b)/(b+1);//common-base DC current gain
Ie=Ib+Ic;//emitter current in A
b1=Ic1/Ib1;//new common-emitter DC current gain
mprintf("Thus b  a and Ie of transistor are %d ,%1.3f and %g A respectively\n",b,a,Ie);
mprintf("new value of b is %2.1f",b1)
//=================================END OF PROGRAM=======================================================================================================
