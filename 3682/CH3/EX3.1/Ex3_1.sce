// Exa 3.1

clc;
clear;

// Given data

//Fig. 3.1(e) shows an inverting amplifier
ACL = -10; // open loop gain of ap-amp 741
R1 = 10*10^6; // Input impedence in Ω

// Solution

printf(' In fig. 3.1(e), to set input impedence Ri = 10 MΩ , pick R1 = 10 MΩ. ');
// since, ACL = - Rf/R1;
// Therefore,
Rf = -ACL*R1;
printf('\n  The calculated value of Rf = %d MΩ. \n ',Rf/10^6);
printf(' Choose Rt = 47 kΩ. \n ');
Rt = 47*10^3; // Ω
Rs = (Rt^2)/(Rf-2*Rt);
printf(' Calculated Rs = %d Ω. ',Rs);
