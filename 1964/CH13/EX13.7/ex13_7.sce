//Chapter-13, Example 13.7, Page 390
//=============================================================================
clc
clear
//INPUT DATA
Ie=10;//emitter current in mA
b=150;//common-emitter DC current gain
//CALCULATIONS
a=b/(b+1);//common-base DC current gain
Ic=a*Ie;//collector current in mA
Ib=Ie-Ic;//base current in mA
mprintf("Thus collector and base currents are %1.2f mA and %1.2f mA respectively",Ic,Ib);
//=================================END OF PROGRAM=======================================================================================================
