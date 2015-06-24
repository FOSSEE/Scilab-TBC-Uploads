//Chapter-1, Example 1.30, Page 43
//=============================================================================
clc;
clear;
//INPUT DATA
P=70;//total power dissipated in circuit in watts
V1=6;//since applied voltage  E is 6V,as per the characteristics of parallel circuit P.D across R1 is
V2=6;//V1=V2,in volts
R1=12;//resistance1 in parallel combination in ohms
R2=6;//resistance2 in parallel combination in ohms
R3=6.25//resistance3 in series with parallel combination in ohms
I1=V1/R1;// current through the resistance R1 in Amps
I2=V2/R2;//current through the resistance R2 in Amps
r=0.25;//internal resistance in ohm
//CALCULATIONS 
I=I1+I2;//total current through parallel combination
E=(I*r)+(I*R3)+V2;//emf of battery in Volts
//OUTPUT
mprintf("Thus the value of emf of battery in Volts is %2.2f volts ",E);
 //=================================END OF PROGRAM==============================
