//Chapter-12, Example 12.2, Page 341
//=============================================================================
clc
clear
//INPUT DATA
Vdc=24;//supply voltage in volts
Rl=500;//resistance in ohms
rf=50;//forward resistance in ohms
//CALCULATIONS
Idc=(Vdc)/(Rl);//average value of load current in A
Im=(%pi)*(Idc);//maximum value of load current in A
Vm=(Im)*(rf+Rl);//Maximum voltage required at input in volts
mprintf("Thus average current,maximum current and maximum voltage required are %g A,%g A and %2.2f V respectively",Idc,Im,Vm);
//=================================END OF PROGRAM======================================================================================================
