//Exa 5.6
clc;
clear;
close;
format('v',6);

//Given Data :
T=727+273;//Kelvin
T0=17+273;//Kelvin
deltaQ=4000;//KJ
deltaS=deltaQ/T;//KJ/K
A=deltaQ-T0*deltaS;//KJ
disp(A,"Availability of heat energy in KJ : ");
UA=T0*deltaS;//KJ
disp(UA,"Unavailable heat energy in KJ : ");
