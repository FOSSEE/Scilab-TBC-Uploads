clc
SG=0.8;
rho_oil=800; //kg/m^3
K_oil=1.5*10^9; //N/m^2; crude oil
K_Hg=27*10^9; //N/m^2; Mercury
rho_Hg=13600; //kg/m^3

C_oil=sqrt(K_oil/rho_oil);
disp("Sonic velocity of crude oil =")
disp(C_oil)
disp("m/s")

C_Hg=sqrt(K_Hg/rho_Hg)
disp("Sonic velocity of Mercury =")
disp(C_Hg)
disp("m/s")