clc;
clear all;
disp("Diffusion coefficient determination")
MA=17;
MB=29;
Va=26.43;// cm^3/gm mole
Vb=30.6;// cm^3/gm mole

T=273+27;// K
p=1;// atm

DAB=0.0043*(T^1.5)*(1/MA+1/MB)^0.5/(p*(Va^(1/3)+Vb^(1/3))^2);
disp("cm^2/s",DAB,"Diffusion coefficient DAB  =")

