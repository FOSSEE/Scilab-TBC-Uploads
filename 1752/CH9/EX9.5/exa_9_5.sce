//Exa 9.5
clc;
clear;
close;
format('v',9)
//given correlataion
//h_A=5.56*(det_T)^3
//h_P=h_A*(rho/rho_a)^0.4
disp("When temperature excess is 25 degree C at atmospheric pressure")
del_T=25;// in degree C
h_A=5.56*(del_T)^3;// in W/m^2K
disp(h_A*10^-3,"The heat transfer coefficient in kW/m^2K");
// and at 20 bar
rho=20;
rho_a=1;
h_P=h_A*(rho/rho_a)^0.4;// in W/m^2
disp(h_P*10^-3,"Value of h_P in kW/m^2")