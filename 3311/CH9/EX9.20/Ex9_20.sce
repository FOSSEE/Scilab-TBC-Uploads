// chapter 9
// example 9.20
// Design a parallel invertor
// page-614
clear;
clc;
// given
f=50; // in Hz
E=200; // in V
Edc=40; // in V
I_L=2; // in A
tq=40; // in us (assumption as done in the book)
E_amplitude=415; // in V (fundamental frequency amplitude of voltage assumption as done in the book)
Bmax=1; // in Wb/m^2 (assumption for flux density as done in the book)
A=25; // in cm^2 (assumption for cross-section area as done in the book)
// calculate
tq=tq*1E-6; // changing unit from us to s
A=A*1E-4; // changing unit from cm^2 to m^2
// since Edc*sqrt(C/L)=I_L and sqrt(C*L)=3*tq/%pi, therefore multiplying both we get
// Edc*C=I_L*3*tq/%pi, therefore we get
C=(I_L*3*tq/%pi)/Edc; // calculation of capacitance
L=(1/(I_L/Edc)^2)*C; // calculation of inductance
Vc=2*Edc; // calculation of capacitor voltage
N2=E_amplitude/(sqrt(2)*4.44*f*A); // calculation of number of turns in secondary winding
// since N2/(1/2*N1)=6, therefore we get
N1=2*N2/6; // calculation of number of turns in primary winding
V_BO=2*Edc; // calculation of forward blocking voltage rating
I_T=2*E/Edc*I_L; // calculation of Thyristor current
printf("\nThe inductance is \t\t\t\t L=%.1f uH",L*1E6);
printf("\nThe capacitance is \t\t\t\t C=%.1f uF",C*1E6);
printf("\nThe capacitor voltgae is \t\t\t Vc=%.f V",Vc)
printf("\nThe number of turns in secondary winding is \t N2=%.f",N2);
printf("\nThe number of turns in primary winding is \t N1=%.f",N1);
printf("\nThe forward blocking voltage is \t\t V_BO>=%.f V",V_BO);
printf("\nThe Thyristor current is \t\t\t I_T>=%.f A",I_T);
// Note: 1. The answer for L and C is wrong in the book due to calculation mistake.
//       2 The answer vary slightly due to precise calculations and round off as done in the book