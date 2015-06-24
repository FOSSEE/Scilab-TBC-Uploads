//Exa 5.1
clc;
clear;
close;
format('v',7);

//Given Data : 
deltaQ=1000;//KJ
T=1073;//Kelvin
T0=20+273;//Kelvin
deltaS=deltaQ/T;//KJ/K
A=deltaQ-T0*deltaS;//KJ
disp(A,"Available energy in KJ : ");
UA=T0*deltaS;//KJ
disp(UA,"Unavailable energy in KJ : ");
