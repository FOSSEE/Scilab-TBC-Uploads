// Exa 8.7
clc;
clear;
close;
// Given data
C = 0.86;// in kg
H = 0.14;// in kg
S = 0;// in kg
O = 0;// in kg
Vair = 0.77;//volume of 1kg of air in m^3
Spe_Gravity = 0.8;// specific gravity of petrol
maBYmf = (11.6*C)+(34.8*(H-O/8)) + (4.35*S);// in kg
disp(maBYmf,"The therotical mass of air in kg is");
V = maBYmf *Spe_Gravity*Vair ;// in m^3/litre
disp(V,"Volume of air required in m^3/litre is");
