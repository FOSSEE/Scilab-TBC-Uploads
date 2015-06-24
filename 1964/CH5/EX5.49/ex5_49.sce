//Chapter-5, Example 5.49, Page 211
//=============================================================================
clc
clear
//INPUT DATA
Il=10;//current in Amps
Vl=400;//line voltage in volts
//CALCULATIONS
Vp=Vl/(sqrt(3));//line to neutral voltage
Ip=Il;//phase current in Amps
mprintf("Thus line to neutral voltage  and phase current are %1.0f V and %d A respectively",Vp,Ip);
//=================================END OF PROGRAM======================================================================================================
