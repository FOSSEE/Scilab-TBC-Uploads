
//Example NO.12.6
//Page No.358
//To find band gap of superconducting lead 
clc;clear;
KB = (1.38*10^-23);//Boltzman's constant.
Tc = (7.19);//Critical temperature of lead -[K].
Eg = (3.5*KB*Tc);//Energy gap of semiconductor.
printf("\nBand gap of superconducting lead is %3.3e J",Eg);
Eg = (Eg/(1.6*10^-19*10^(-3)));
printf("\nBand gap of superconducting lead is %.2f meV",Eg);

