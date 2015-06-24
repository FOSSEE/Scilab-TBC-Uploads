//Chapter-13, Example 13.12, Page 391
//=============================================================================
clc
clear
//INPUT DATA
a=0.98//common-base DC current gain
Icbo=5*10^-6;//current in A
Ib=100*10^-6;//base current in A
//CALCULATIONS
Ic=((a*Ib)/(1-a))+(Icbo/(1-a));//collector current in mA
Ie=Ib+Ic;//emitter current in mA
mprintf("Thus collector and emitter currents are %g A and %g A respectively",Ic,Ie);
//=================================END OF PROGRAM=======================================================================================================
