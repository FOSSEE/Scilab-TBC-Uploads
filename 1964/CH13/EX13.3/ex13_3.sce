//Chapter-13, Example 13.3, Page 389
//=============================================================================
clc
clear
//INPUT DATA
a=0.967//common-base DC current gain
Ie=10;//emitter current in mA
//CALCULATIONS
Ic=Ie*a;//collector current in mA
Ib=Ie-Ic;//base current in mA
mprintf("base current is %1.2f mA",Ib)
//=================================END OF PROGRAM=======================================================================================================
