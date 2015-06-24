// chapter 8
// example 8.17
// fig. 8.26
// Compute the value of commutating capacitor and inductor
// page-483-484
clear;
clc;
// given
Edc=80; // in V (dc source)
Toff=20; // in us (turn off time of SCR)
T=2000; // in us (chopping period)
I0_m=80; // in A (starting current)
// calculate
Toff=Toff*1E-6;
T=T*1E-6;
dt=Toff; // assumption as done in the book
t_q=Toff+dt;
C=I0_m*(t_q)/Edc; // calculation of commutating capacitance
L_min=C*(Edc/I0_m); // calculation of minimum commutating inductance
L_max=0.01*T^2/(%pi^2*C); // calculation of maximum commutating inductance
printf("\nThe commutating capacitance is \t C=%.f uF",C*1E6);
printf("\nThe commutating inductance lies in the range \t %.f uH <= L <= %.2f uH",L_min*1E6,L_max*1E6);