// chapter 8
// example 8.20
// Compute the value of commutating capacitance and transformer inductances
// page-499
clear;
clc;
// given
Edc=60; // in V (dc source)
I0_m=140; // in A (load current)
t_q=20; // in us
g=4;
// calculate
t_q=t_q*1E-6; // changing unit from us to s
Rm=Edc/I0_m;
// since g=(1/Rm)*sqrt(L1/C) and t_q=sqrt(L1*C),
// Multiplying both these equations we get g*t_q=(1/Rm)*L1 or we get
L1=g*t_q*Rm; // calculation of transformer inductance L1
C=t_q^2/L1; // calculation of commutating capacitance
L2=L1; // calculation of transformer inductance L2
printf("\nThe commutating capacitance is \t C=%.2f uF",C*1E6);
printf("\nThe transformer inductances is \t L1=%.1f uH \t L2=%.1f uH",L1*1E6, L2*1E6);
// Note: the answers vary slightly due to precise calculation