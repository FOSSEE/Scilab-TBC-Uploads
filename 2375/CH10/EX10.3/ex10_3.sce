// Exa 10.3
clc;
clear;
close;
format('v',6)
// Given data
A = 60;// in dB
A= 10^(A/20);
Zo = 12000;// in ohm
Zdesh_o = 600;// in ohm
//Zdesh_o = Zo/(1+(A*Beta));
Beta = (((Zo/Zdesh_o)-1)/A)*100;// in %
disp(Beta,"The feedback factor in % is");
Beta = Beta/100;
DAbyA = 0.1;
dAfbyAf = (1/(1 + (A*Beta)))*DAbyA*100;// in %
disp(dAfbyAf,"The percentage change in the overall gain in % is");
