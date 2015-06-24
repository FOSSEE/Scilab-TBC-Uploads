//Chapter-1, Example 1.29, Page 42
//=============================================================================
clc;
clear;
//INPUT DATA
P=70;//total power dissipated in circuit in watts
V=22;//applied voltage in volts
I=P/V;//total current through the circuit in Amps
R1=12;//resistance 1 of parallel combination in ohms
R2=8;//resistance 2 of parallel combination in ohms
//CALCULATIONS 
RP=(R1*R2)/(R1+R2);//equivalent resistance of parallel combination in ohms
VP=I*RP;//voltage across parallel combination in volts
VR=V-VP;//voltage across the resistance R# in volts
R3=VR/I;//by ohm's law
//OUTPUT
mprintf("Thus the value of third resistance placed is %1.2f ohms ",R3);
 //=================================END OF PROGRAM==============================
