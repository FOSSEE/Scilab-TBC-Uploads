// chapter 9
// example 9.24
// fig. 9.45
// Obtain the value of commutating components L and C
// page-626
clear;
clc;
// given
I_L_max=80; // in A (maximum load current)
Edc_min=200; // in V (minimum source voltage)
tq=40; // in us (turn-off time of SCRs)
// calculate
tq=tq*1E-6; // changing unit from us to s
Toff=1.5*tq; // calculation of circuit turn-off time
C=0.893*Toff*I_L_max/Edc_min; // calculation of the value of commutating capacitance
L=0.397*Edc_min*Toff/I_L_max; // calculation of the value of commutating inductance
printf("\nThe value of commutating capacitance is \t C=%.2f uF",C*1E6);
printf("\nThe value of commutating inductance is \t\t L=%.2f uH",L*1E6);
// Note: The answer in the book for C and L is wrong due to calculation mistake 