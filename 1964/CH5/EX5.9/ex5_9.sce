//Chapter-5, Example 5.9, Page 169
//=============================================================================
clc
clear
//INPUT DATA
phi=40;//phase in degrees
V=150;//voltage in Volts
I=8;//current in A
//the applied voltage lags behind the current .That means the current leads the voltage
//hence pf is leading
//CALCULATIONS
pf=cos(phi*%pi/180);//in degrees--->leading
//hence it is a capacitive circuit
pa=V*I*pf;//active power in W
pr=V*I*sin(phi*%pi/180);//reactive power in VAR
mprintf("Thus active and reactive power are %3.1f W and %3.1f VAR respectively",pa,pr);
//=================================END OF PROGRAM======================================================================================================

;
