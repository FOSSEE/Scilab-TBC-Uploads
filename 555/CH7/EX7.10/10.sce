// Implementation of example 7.10
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

// T is temperature,dS is change in entropy,S is entropy,Q is heat transfer
l=5 // length in m
b=7 // breadth in m
th=0.32 // thickness in m
k=0.71 // W/m*K
t1=6 //degree celsius
t2=21 //degree celsius
T1=t1+273; // K
T2=t2+273; // K
Tr=27 //degree celsius
Ts=2 //degree celsius
tr=Tr+273;
ts=Ts+273;
Q=k*l*b*(T2-T1)/th;
Sgen=(Q/T1)-(Q/T2);
Sgent=(Q/ts)-(Q/tr);
printf("rate of heat transfer through wall = %.2f W \n rate of entropy generation in wall = %.3f W/K \n rate of total entropy generation = %.3f W/K",Q,Sgen,Sgent);
// end