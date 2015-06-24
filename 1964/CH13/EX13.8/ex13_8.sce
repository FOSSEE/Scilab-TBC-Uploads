//Chapter-13, Example 13.8, Page 390
//=============================================================================
clc
clear
//INPUT DATA
Ic=80;//collector current in mA
b=170;//common-emitter DC current gain
//CALCULATIONS
Ib=Ic/b;//base current in mA
Ie=Ib+Ic;//emitter current in mA
mprintf("Thus emitter and base currents are %2.2f mA and %1.2f mA respectively",Ie,Ib);
//=================================END OF PROGRAM=======================================================================================================
