//example 6.20

clear;
clc;

disp("CaF2(s)<=>CaF2(aq)<=>Ca+2(aq) + 2F-(aq)");

//Given:
Ksp=4*10^-11;//Solubility product of sparingly soluble salt CaF2

//To find the value of activity coefficient
x=Ksp/4;
Cs=x^0.33;//Solubility 
y=Cs^2;
Y=(x/y)^0.33;//activity coefficient
printf("The activity coefficient is %f ",Y);
  