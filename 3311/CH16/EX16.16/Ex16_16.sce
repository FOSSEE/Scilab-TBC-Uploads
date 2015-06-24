// chapter 16
// example 16.16
// What will be the firing angle and output power available
// page-1051
clear;
clc;
// given
f=50; // in Hz
neta=60; // in % 
T=0.24; // in s (repition period)
// calculate
// part (i) can not be solved
// since T=0.24 s represents 12 cycles at 50 Hz or T=24 half cycles, therefore 
T=24;
// since Pload/Pmax=N/24, therefore
N1=1, N2=24
Pload1=N1/T;
Pload2=N2/T;
printf("The available power range from %.2f %% of Pmax (N=%.f) to %.f %% of Pmax (N=%.f) varying in steps of %.2f %% of Pmax",Pload1*1E2,N1,Pload2*1E2,N2,Pload1*1E2);
