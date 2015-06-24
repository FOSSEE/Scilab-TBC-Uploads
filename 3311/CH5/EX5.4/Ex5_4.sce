// chapter 5
// example 5.4
// fig. E5.4
// Determine the power dissipated by each MOSFET
// page-175-176
clear;
clc;
// given
I_T=12; // in A (total current)
R1=0.2, R2=0.1 // in ohm
// calculate
I1=(R2/(R1+R2))*I_T; // applying current divider rule to calculate current through MOSFET 1
I2=I_T-I1; // calculation of current through MOSFET 2
P1=I1^2*R1; // calculation of power dissipated by MOSFET 1
P2=I2^2*R2; // calculation of power dissipated by MOSFET 2
printf("\nThe power dissipated by MOSFET 1 is \t P1=%.1f W",P1);
printf("\nThe power dissipated by MOSFET 2 is \t P2=%.1f W",P2);