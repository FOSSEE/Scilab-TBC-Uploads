// chapter 4
// example 4.1
// Calculate the value of R and C
// page-120-121
clear;
clc;
// given
n_s=18; // number of thyristors connected is series
E_D=500; // in V (maximum permissible blocking voltage)
E_s=7500; // in V (string voltage)
dI_b=1; // in mA (range of blocking current)
dQ=30; // in uC (maximum permissible diffrenece between reverse recovery charge)
// calculate
R=(n_s*E_D-E_s)/((n_s-1)*dI_b); // calculation of R in k-ohm
C=(n_s-1)*dQ/(n_s*E_D-E_s); // calculation of C in uC
printf("\nThe value of R is \tR=%.2f k-ohm",R);
printf("\nThe value of C is \tC=%.2f uF",C);