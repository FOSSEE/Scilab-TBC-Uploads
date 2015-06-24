//Chapter-13, Example 13.9, Page 390
//=============================================================================
clc
clear
//INPUT DATA
Ib=0.125;//base current in mA
b=200;//common-emitter DC current gain
//CALCULATIONS
Ic=b*Ib;//collector current in mA
Ie=Ib+Ic;//emitter current in mA
mprintf("Thus emitter and collector currents are %2.3f mA and %d mA respectively",Ie,Ic);
//=================================END OF PROGRAM=======================================================================================================
