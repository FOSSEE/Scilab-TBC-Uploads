clc;clear;
//Example 22.2
//calculation of transition temperature

//given values

T=8;//temp in K
Hc=1*10^5;//critical magnetic field at T in A/m
Hc0=2*10^5;//magnetic field at 0 K in A/m

//calculation
Tc=T/(sqrt(1-Hc/Hc0));
disp(Tc,'transition temp in K is');
