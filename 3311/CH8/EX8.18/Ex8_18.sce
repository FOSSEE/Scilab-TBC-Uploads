// chapter 8
// example 8.18
// Compute the value of commutating capacitor and inductor, Maximum capacitor voltage, and peak commutating current
// page-491
clear;
clc;
// given
Edc=220; // in V (dc source)
Toff=20; // in us (turn off time of SCR)
I0_m=180; // in A (starting current)
x=3
// calculate
Toff=Toff*1E-6;
dt=Toff; // assumption as done in the book
t_q=Toff+dt;
L=(Edc*t_q)/(x*I0_m*(%pi-2*asin(1/x))); // calculation of commutating inductance
C=x*I0_m*t_q/(Edc*(%pi-2*asin(1/x))); // calculation of commutating capacitance
V_cp=Edc+I0_m*sqrt(L/C); // calculation of Maximum capacitor voltage
i_cp=x*I0_m; // calculation of peak commutating current
printf("\nThe commutating inductance is \t\t L=%.2f uH",L*1E6);
printf("\nThe commutating capacitance is \t\t C=%.2f uF",C*1E6);
printf("\nThe maximum capacitor voltage is \t V_cp=%.2f V",V_cp);
printf("\nThe peak commutating current is \t i_cp=%.f A",i_cp);
// Note: the answer for i_cp is wrong in the book due to use of wrong value in the calculation