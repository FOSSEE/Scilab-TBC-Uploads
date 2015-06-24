//Chapter-1, Example 1.39, Page 49
//=============================================================================
clc;
clear;
//INPUT DATA
V=100;//supply voltage in volts
I=10;//total current in A
P1=600;//power dissipated in coil in Watts
//CALCULATIONS 
//Reff=((R1*R2)/(R1+R2)) is total effective resistance of circuit in ohms----eqn(1)
Reff=V/I;;//total effective resistance of circuit in ohms
R1=((V)^2)/(P1);//in ohms----eqn(2)
//solving for R2 in eqn(1)
R2=((Reff*R1)/(R1-Reff));//in ohms
mprintf("R1=%2.2f Ohms \n R2=%1.0f Ohms ",R1,R2); 
 //=================================END OF PROGRAM==============================
