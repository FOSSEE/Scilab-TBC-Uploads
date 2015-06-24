clc
h_H2O=34; //mm of Hg
g=9.81; //m/s^2
rho=13600; //kg/m^3
P_Hg=97.5; //mm of Hg
P_atm=760; //mm of Hg
P_H2O=h_H2O/13.6; //mm of Hg
Pabs=rho*g*(P_Hg+P_atm-P_H2O)/10^8; //bar
disp("absolute pressure =")
disp(Pabs)
disp("bar")