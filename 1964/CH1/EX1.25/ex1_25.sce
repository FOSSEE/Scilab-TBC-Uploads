//Chapter-1, Example 1.25, Page 41
//=============================================================================
clc;
clear;
//INPUT DATA
R1=2;//resistance1 in ohms
R2=3;//resistance2 in ohms
R3=4;//resistance3 in ohms
R4=5;//resistance4 in ohms
P=100;//total power absorbed in watts
//CALCULATIONS 
RT=((R2*R3*R4)+(R1*R3*R4)+(R1*R2*R4)+(R1*R2*R3))/(R1*R2*R3*R4);
RT=1/RT;//equivalent resistance of parallel combination of R1,R2,R3,R4 Resistors
V=sqrt(P*RT);//voltage in volts that has to be applied to absorb 100w of power
//OUTPUT
mprintf("Thus the voltage in volts that has to be applied to absorb 100w of power is %1.3f V ",V);
 //=================================END OF PROGRAM==============================
