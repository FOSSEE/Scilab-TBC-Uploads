// Implementation of example 6.1
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

// T1 & T2 are source & sink temperatures respectively
// n is efficiency of engine & W is work done

t1=800 
t2=30 
T1=t1+273; // K
T2=t2+273 // K
W=1 // kW
Nmax=1-(T2/T1);
Q1=W/Nmax;
Q2=Q1-W;
printf("least rate of heat rejection = %.3f kW",Q2);
// end