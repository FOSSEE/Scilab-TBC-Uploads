//Exa 5.7
clc;
clear;
close;
format('v',7);

//Given Data :
deltaQ=850;//KJ
T=180+273;//Kelvin
T0=22+273;//Kelvin
deltaS=deltaQ/T;//KJ/K
A=deltaQ-T0*deltaS;//KJ
disp(A,"Available energy in KJ : ");
