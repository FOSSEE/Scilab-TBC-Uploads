// Implementation of example 6.3
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

// T temperature,Nmax max efficiency,W work done,Q heat trnsfer,COP coefficient of performance of refrigerator..
t1=600 
T1=t1+273 // K
t2=40 
T2=t2+273 // K
t3=-20
T3=t3+273 // K
Q1=2000 // kJ
W=360 // kJ

Nmax=1-(T2/T1);
W1=Nmax*Q1;
COP=T3/(T2-T3);
W2=W1-W;
Q4=COP*W2;
Q3=Q4+W2;
Q2=Q1-W1;
printf("heat rejection to 40 degree celsius reservoir = %.2f kJ \n",Q2+Q3);
// part b
N=0.4*Nmax;
W1=N*Q1;
W2=W1-W;
COP2=0.4*COP;
Q4=W2*COP2;
Q3=Q4+W2;
Q2=Q1-W1;
printf("heat rejection to 40 degree celsius reservoir with decreased efficiency= %.2f kJ \n",Q2+Q3);
// end