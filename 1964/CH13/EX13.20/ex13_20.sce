//Chapter-13, Example 13.20, Page 394
//=============================================================================
clc
clear
//INPUT DATA
a=0.99;//common-base DC current gain
Icbo=5*10^-6;//current in A
Ib=20*10^-6;//current in A
//CALCULATIONS
Ic=((a*Ib)/(1-a))+(Icbo/(1-a));//collector current in A
Ie=Ib+Ic;//emitter current in A
mprintf("collector and  emitter currents are %g A and %g A respectively",Ic,Ie)
//=================================END OF PROGRAM=======================================================================================================
