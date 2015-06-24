// chapter 2
// example 2.10
// Fig. 2.19
// Compute the value of commutating capacitance and inductance
// page-54
clear;
clc;
// given
Edc=50; // in V (source voltage)
I_L=50; // in A (current)
t_off=30; // in us (turn-off time of SCR1)
f=500; // in Hz (chopping frequency)
neta1=10, neta2=100; // in % (load voltage variation)
// calculate
// Let  us assume 50 % tolerance on turn-off time
t_off=t_off+(50*t_off/100); // calculation of turn-off time for reliable operation
printf("\nThe turn-off time for reliable operation is \tt_off= %.f us",t_off);
C=I_L*t_off/Edc; // calculation of commutating capacitance
printf("\n\nThe commutating capacitance is \t\t\tC= %.f uF",C);
V0_min=neta1*Edc/100; // calculation of minimum V0
T=1/f; // calculation of chopping time period
L1=((V0_min/Edc)^2)*(T^2)/(((%pi)^2)*C*1E-6);
L1=L1*1E6; // changing unit from H to uH
 //L1=((V0_min/Edc)^2); // calculation of upper limit of commutating inductance
L2=C*(Edc/I_L)^2; // calculation of lower limit of commutating inductance
printf("\n\nThe commutating inductance lies in range \t %.f uH < L < %.f uH",L2,L1);