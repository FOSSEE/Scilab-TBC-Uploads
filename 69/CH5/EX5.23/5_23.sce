clear; clc; close;

Beta = 8000;
Re = 390;
ri = 5*(10^(3));

x = ri/Beta;
Zo = (Re*ri*x)/(Re*ri+ri*x+x*Re);
disp(Zo,"output impedance(Zo) :");
