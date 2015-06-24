// chapter 9
// example 9.27
// Determine commutating capacitor, load current, Fcritical and Rcritical
// page-649-650
clear;
clc;
// given
f=50; // in Hz
tq=62; // in us (Thyristor turn-off time)
R=5; // in ohm
I=1; // in A (let us assume this value for current source for calculation of load current)
// calculate
tq=tq*1E-6; // changing unit from us to s
Toff=5*tq; // calculation of circuit turn-off time
T=1/f; // calculation of time period
// since Toff=0.69*R*C, therefore we get
C=Toff/(0.69*R); // calculation of commutating capacitor
I1=I*((1-exp(-T/(2*R*C)))/(1+exp(-T/(2*R*C)))); // calculation of load current
Toff_critical=1.5*tq; // calculation of critical circuit turn-off time
// since Toff=R*C*log(2/(1+exp(-T/(2*R*C)))), therefore we get
Tcritical=2*R*C*log(2/(exp(Toff_critical/(R*C))-1)); // calculation of critical time period
Fcritical=1/Tcritical; // calculation of critical frequency
// since Toff=0.69*R*C, therefore we get
Rcritical=Toff_critical/(0.69*C); // calculation of critical resistance
printf("\nThe commutating capacitor is \t C=%.2f uF",C*1E6);
printf("\nThe load current is \t\t I1=I=%.f A",I1);
printf("\nThe critical frequency is \t Fcritical=%.1f Hz",Fcritical);
printf("\nThe critical resistance is \t Rcritical=%.2f ohm",Rcritical);
// Note: 1.The answer varies slightly as from calculated from the book due to precise calculation.
//       2. for calculating other variables, author has use standard value of C (100 uF) for further calculation but I have used the value which is calculated.