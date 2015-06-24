clc;
clear;
Pc=300;// Power of the carrier in W
m=0.6// modulation index
Pt=Pc*(1+(m^2)/2); //total power
disp("Total power in the modulated wave(in W) is");
disp(Pt);
