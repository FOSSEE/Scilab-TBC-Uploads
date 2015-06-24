// chapter 16
// example 16.15
// fig. Ex 16.15
// Calculate the value of load resistance, commutating capacitor and resistance connected in series
// page-1046
clear;
clc;
// given
Edc=50; // in V (supply voltage)
I_L=10; // in A (load current)
Toff=20; // in us (turn-off time)
I_H=5; // in mA (holding current)
// calculate
Toff=Toff*1E-6; // changing unit from us to s
I_H=I_H*1E-3; // changing unit from mA to A
R2=Edc/I_H; // calculation of resistance connected in series
R1=Edc/I_L; // calculation of load resistance
C=1.5*Toff*I_L/Edc; // calculation of ommutating capaitor
printf("\nThe value of resistance connected in series is \t R2=%.f k-ohm",R2*1E-3);
printf("\nThe value of load resistance is \t R1=%.f ohm",R1);
printf("\nThe value of commutating capacitor is \t C>=%.f uF",C*1E6);