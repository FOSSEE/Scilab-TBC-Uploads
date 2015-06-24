// chapter 8
// example 8.9
// fig. Ex. 8.9
// Find the chopping frequency
// page-463
clear;
clc;
// given
Edc=400; // in V (dc source)
L=0.05; // in H
R=0; // in ohm
alpha=0.3; // duty cycle
dI0=8; // in A (load current excursion)
// calculate
E0=alpha*Edc;
Eb=E0;
// Since VT_area=L*dI0 and VT_area=(Edc-Eb)*Ton, therefore we get
// (Edc-Eb)*Ton=L*dI0 or 
Ton=L*dI0/(Edc-Eb); // calculation of ON period of chopper
// Since alpha=Ton/T, therefore
T=Ton/alpha; // calculation of chopping period
f=1/T; // calculation of chopping frequency
printf("\nThe chopping frequency to limit the load current excursion to %.f A is \t f=%.2f Hz",dI0,f);
// Note: The answer varies slightly due to precise calculation