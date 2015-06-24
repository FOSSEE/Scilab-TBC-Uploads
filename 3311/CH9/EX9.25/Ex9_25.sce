// chapter 9
// example 9.25
// fig. 9.47
// Obtain the value of commutating components and the value of resistance
// page-628
clear;
clc;
// given
Edc=300; // in V (source voltage)
neta=15; // in percent (variation of maximum and minimum dc voltage from dc source voltage)
I_L_max=100; // in A (maximum load current)
I_L_min=20; // in A (minimum load current)
tq=20; // in us (turn-off time of SCRs)
safety_factor=2; // assumption
// calculate
tq=tq*1E-6; // changing unit from us to s
Toff=2*tq; // calculation of circuit turn-off time
Edc_min=Edc*(1-neta/100); // calculation of minimum dc voltage
Edc_max=Edc*(1+neta/100); // calculation of maximum dc voltage
C=0.893*Toff*I_L_max/Edc_min; // calculation of the value of commutating capacitance
L=0.397*Edc_min*Toff/I_L_max; // calculation of the value of commutating inductance
R=2*sqrt(L/C); // calculation of the value of resistance
printf("\nThe value of commutating capacitance is \t C=%.f uF",C*1E6);
printf("\nThe value of commutating inductance is \t\t L=%.1f uH",L*1E6);
printf("\nthe value of resistance is \t\t\t R=%.1f ohm",R);
// Note: The answer in the book for C and L is wrong due to calculation mistake 