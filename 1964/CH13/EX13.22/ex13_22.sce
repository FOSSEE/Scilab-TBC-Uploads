//Chapter-13, Example 13.22, Page 394
//=============================================================================
clc
clear
//INPUT DATA
a=0.99;//common-base DC current gain
Icbo=50*10^-6;//current in A
Ib=1*10^-3;//current in A
//CALCULATIONS
Ic=((a*Ib)/(1-a))+(Icbo/(1-a));//collector current in A
Ie=Ic+Ib;//emitter current in A
mprintf("Thus emitter current is %g A",Ie)
//=================================END OF PROGRAM=======================================================================================================
