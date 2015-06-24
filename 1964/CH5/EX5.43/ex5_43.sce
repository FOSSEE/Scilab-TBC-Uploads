//Chapter-5, Example 5.43, Page 209
//=============================================================================
clc
clear
//INPUT DATA
V1=400;//voltage in volts
Il=10;//current in A
//CALCULATIONS
//in star connected system,phase current=(line current)=I1
phase_voltage=(V1)/(sqrt(3));//voltage in Volts
mprintf("Thus phase voltage is %1.0f V",phase_voltage);
//=================================END OF PROGRAM======================================================================================================
