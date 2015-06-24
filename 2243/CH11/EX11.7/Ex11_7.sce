clc();
clear;
//Given :
//Fraction F = n/N
Eg = 0.72; // Energy gap in eV
k = 0.026/300;// kT value at 300 K , so k = kT/T
T1 = 30; // Temperature in K
T2 = 300; //Temperature in K
T3 = 1210;//Temperature in K
//Fraction of electrons : n/N = exp(-Eg/2*k*T)
F1 = exp(-Eg/(2*k*T1));
F2 = exp(-Eg/(2*k*T2));
F3 = exp(-Eg/(2*k*T3));
printf(" For 30 K , n/N  = %.1f x 10^-61\n",F1*10^61);
printf(" For 300 K , n/N  = %.1f x 10^-7\n",F2*10^7);
printf(" For 1210 K , n/N  = %.3f \n",F3);
