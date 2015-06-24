//clc();
clear;
//To determine the ratio in higher energy and lower energy
Eg=3*1.6*10^-19;         //energy gap in J
T=50+273;                //temperature in kelvin
Kb=1.38*10^-23;          //boltzmann constant in J/K
A=Eg/(Kb*T);
R=exp(-A);
printf("ratio in higher energy and lower energy is ");
disp(R);

//answer in book is wrong
