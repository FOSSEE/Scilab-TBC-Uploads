//Chapter-1, Example 1.37, Page 48
//=============================================================================
clc;
clear;
//INPUT DATA
P=16;//total power dissipated in circuit in Watts
R1=4;//resistance R1 in Ohms
R2=2;//resistance R2 in Ohms
R3=8;//resistance R3 in Ohms
V=8;//supply voltage in volts
//let resistance parallel to R1 is R ohms
//CALCULATIONS 
Reff=(((V)^2)/P);//total effective resistance of circuit in ohms
x=((R2*R3)/(R2+R3));//effective resistance of 2nd parallel circuit in ohms
z=(Reff-x);//effective resistance of 1st parallel circuit where z=((R1*R)/(R1+R)) in ohms------eqn(1)
//solving for R in eqn(1)
R=(R1*z)/(R1-z);
Reff=((R1*R)/(R1+R))+(x);//in ohms
I=V/Reff;//total current in A
mprintf("Thus the total current is I=%d A ",I); 
 //=================================END OF PROGRAM==============================
