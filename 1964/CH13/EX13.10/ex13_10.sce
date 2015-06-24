//Chapter-13, Example 13.10, Page 391
//=============================================================================
clc
clear
//INPUT DATA
Ie=12;//emitter current in mA
b=100;//common-emitter DC current gain
//CALCULATIONS
Ib=Ie/(1+b);//base current in mA
Ic=Ie-Ib;//collector current in mA
mprintf("Thus base and collector currents are %1.4f mA and %2.4f mA respectively",Ib,Ic);
//=================================END OF PROGRAM=======================================================================================================
