//Exa 1.6
clc;
clear;
close;
format('v',8);

//Given Data :
g=9.81;//m/s^2
rho_o=0.825*10^3;//Kg/m^3
rho_w=1*10^3;//Kg/m^3
rho_Hg=13.45*10^3;//Kg/m^3
h_o=50/100;//m
h_w=65/100;//m
h_Hg=45/100;//m
Patm=1.01325;//bar
P_Hg=rho_Hg*g*h_Hg;//N/m^2
P_w=rho_w*g*h_w;//N/m^2
P_o=rho_o*g*h_o;//N/m^2
Pbase=(Patm*10^5+P_Hg+P_o+P_w);//N/m^2
disp(Pbase,"Pressure at the base of column in N/m^2 : ");
P_OilWater=Patm*10^5+P_o;//N/m^2
disp(P_OilWater,"Pressure at the oil-water surface in N/m^2 : ");
P_WaterMercury=Patm*10^5+P_o+P_w;//N/m^2
disp(P_WaterMercury,"Pressure at the water-mercury surface in N/m^2 : ");
//Answer in the book is not accurate.
