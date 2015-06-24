// Chapter9
//  Output Frequency and Amplitudes
// Page.No-318
// Example9_5
//Figure 9.21
// Given
clear;clc;
Vsat=13;            //in V
R2=10000;               //in ohm
R3=20000;               //in ohm
R=33000;               //in ohm
C=0.01*10^-6;            //in Farad
Vup=Vsat*R2/R3;
printf("\n Value of Vupperthreshold  is = %.1f V\n",Vup); // Result
//dv/dt=Vsat/RC=k
k=Vsat/R/C;
printf("\n dv/dt = %.0f V/S\n",k); // Result
T=Vsat/k;
printf("\n T = %.5f S\n",T); // Result

f=1/T/2;
printf("\nf = %.0f Hz\n",f); // Result
