// chapter 13
// example 13.5
// fig. 13.14
// Determine the snubber component values for critical damping, value of R and power loss
// page-810-811
clear;
clc;
// given
Edc=30; // in V
fs=40; // in kHz
i_L=30; // in A (load current)
t_r=80; // in ns (rise time)
t_f=30; // in ns (fall time)
neta=10; // in % (ratio of maximum discharge current to load current)
// calculate
fs=fs*1E3; // changing unit from kHz to Hz
t_r=t_r*1E-9; // changing unit from ns to s
t_f=t_f*1E-9; // changing unit from ns to s
L=Edc*t_r/i_L; // calculation of inductance
C=i_L*t_f/Edc; // calculation of capacitance
R=sqrt(4*L/C); // calculation of resistance for critical damping
R1=Edc/((neta/100)*i_L); // calculation of resistance if maximum discharge current is limited to 10 % of load current
Ploss=(1/2)*C*Edc^2*fs; // calculation of power loss
printf("\nThe inductance is \t L=%.f nH",L*1E9);
printf("\nThe capacitance is \t C=%.f nF",C*1E9);
printf("\nThe resistance is \t R=%.2f ohm",R);
printf("\nThe resistance if maximum discharge current is limited to 10 %% of load current is \t R=%.f ohm",R1);
printf("\nThe power loss due to RC snubber circuit is \t Ploss=%.2f W",Ploss);
// Note :The answer vary slightly due to precise calculation