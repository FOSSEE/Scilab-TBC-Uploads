//Chapter-13, Example 13.18, Page 393
//=============================================================================
clc
clear
//INPUT DATA
Ib=15*10^-3;//base current in A
b=150;//common-emitter DC current gain
//CALCULATIONS
Ic=b*Ib;//collector current in A
Ie=Ic+Ib;//emitter current in A
a=b/(1+b);//common-base DC current gain
mprintf("Thus collector current,emitter current and common-base DC current gain are %g A, %g A  and %1.4f  respectively",Ic,Ie,a);
//=================================END OF PROGRAM=======================================================================================================
