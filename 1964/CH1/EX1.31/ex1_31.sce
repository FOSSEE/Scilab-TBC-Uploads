//Chapter-1, Example 1.31, Page 44
//=============================================================================
clc;
clear;
//INPUT DATA
E=12;//emf of battery in volts
R1=3;//resistance1 in parallel combination in ohms
R2=4;//resistance2 in parallel combination in ohms
R3=6;//resistance3 in parallel combination in ohms
R4=4;//resistance4 in series with parallel combination in ohms
r=6;//internal resistance in ohm
//CALCULATIONS 
RP=((R2*R3)+(R3*R1)+(R1*R2))/(R1*R2*R3);
RP=1/RP;//equivalent resistance of parallel combination in ohms
RT=RP+R4+r;//total circuit resistance in ohms
I=E/RT;//total circuit current in A
V=E-(I*r);//terminal voltage of battery in volts
//OUTPUT
mprintf("Thus the terminal voltage of battery is %1.3f volts ",V);
 //=================================END OF PROGRAM==============================
