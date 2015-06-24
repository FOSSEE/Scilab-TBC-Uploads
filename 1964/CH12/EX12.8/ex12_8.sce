//Chapter-12, Example 12.8, Page 349
//=============================================================================
clc
clear
//INPUT DATA
Rl=100;//resistance of load in ohms
f=60;//frequency in hz
ripplefactor=0.04;
//CALCULATIONS
L=Rl/(3*sqrt(2)*(2*%pi*f*ripplefactor));//inductance
mprintf("inductance is %1.4f H",L);
//=================================END OF PROGRAM======================================================================================================
