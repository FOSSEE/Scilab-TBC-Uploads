// chapter 5
// example 5.5
// Calculate the rise time of driving waveform
// page-178
clear;
clc;
// given
C_iss=470; /// in pf (input capacitance)
Rg=200; // in ohm
R_L=2.2; // in k-ohm
// calculate
C_iss=C_iss*1E-12; // changing unit from pF to F
// Since Rg=t_r/(2.2*Ciss) therefore 
t_r=2.2*Rg*C_iss; // calculation of current through MOSFET 2
t_r=t_r*1E9; // changing unit from s to ns
printf("\nThe rise time is \t t_r=%.1f ns",t_r);