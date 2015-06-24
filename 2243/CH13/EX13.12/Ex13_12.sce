clc();
clear;
//Given :
M1 = 20; // neon isotope mass in amu
M2 = 22;//neon isotope mass in amu
E = 7*10^4; // Electric field in V/m
e = 1.6*10^-19;// electron charge in C
B = 0.5;// Magnetic field in Wb/m^2
B1 = 0.75; // Magnetic field in Wb/m^2
// Linear seperation = S2 - S1  = (2*E*(M2-M1))/(B*B1*e) 
// 1 amu = 1.66*10^-27 kg
S2_S1 =  (2*E*(M2-M1)*1.66*10^-27)/(B*B1*e) ; // linear seperation in m
printf("S2-S1 =  %.0f mm",S2_S1*10^3);
