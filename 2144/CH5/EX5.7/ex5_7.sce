// Exa 5.7
clc;
clear;
close;
// Given data
Gamma = 1.4;
r = 8;
Eta = 1 - (1/((r)^(Gamma-1)));
Eta = Eta  * 100;// in %
disp(Eta,"Otto engine efficiency in % is");
r = 13;
x = 1;
Rho = 2.5;
Eta = 1-(1/r)^(Gamma-1)*[(Rho^Gamma-1)/(Gamma*(Rho-1))];
Eta = Eta * 100;// in %
disp(Eta,"Diesel engine efficiency in % is");
r = 13;
x = 3.5;
Rho = 2.5;
Eta = 1-(1/r)^(Gamma-1)*[(x*Rho^Gamma-1)/((x-1)+x*Gamma*(Rho-1))];
Eta = Eta * 100;// in %
disp(Eta,"Dual engine efficiency in % is");

