//Chapter-13, Example 13.6, Page 389
//=============================================================================
clc
clear
//INPUT DATA
Ic=40;//collector current in mA
b=100;//common-emitter DC current gain
//CALCULATIONS
Ib=Ic/b;//base current in mA
Ie=Ib+Ic;//emitter current in mA
mprintf("Thus emitter current is %2.1f mA",Ie);
//=================================END OF PROGRAM=======================================================================================================
