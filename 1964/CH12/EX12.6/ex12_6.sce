//Chapter-12, Example 12.6, Page 345
//=============================================================================
clc
clear
//INPUT DATA
Pdc=50;//power in W
Rl=200;//resistance in ohms
ripplefactor=0.01
//CALCULATIONS
Vdc=sqrt(Pdc*Rl);//DC voltage
Vac=ripplefactor*Vdc;//AC voltage
mprintf("Thus AC ripple voltage across the load is %d V",Vac);
//=================================END OF PROGRAM======================================================================================================
