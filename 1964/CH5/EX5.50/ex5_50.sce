//Chapter-5, Example 5.50, Page 211
//=============================================================================
clc
clear
//INPUT DATA
P1=2000;//power in watts
P2=1000;//power in watts
Vl=400;//line voltage in volts
//CALCULATIONS
P=P1+P2;//power in Watts
a=sqrt(3*(P1-P2)/(P1+P2));
b=atan(sqrt(a));
power_factor=cos(b);
kVA=P/power_factor;
mprintf("Thus power,power factor and kVA are %d W ,%1.3f and %1.2f respectively",P,power_factor,kVA);
//note:computed value for powerfactor and kVA in textbook are wrong.Please check the calculations
//=================================END OF PROGRAM======================================================================================================
