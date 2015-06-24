//Exa 9.3
clc;
clear;
close;
format('v',9)
//given data
h_fg=2392*10^3;// in J/kg
rho=993;// in kg/m^3
k=0.63;// in W/mK
miu=728*10^-6;// in kJ/m-s
N=10;
T_sat=45.7;// in degree C
T_s=25;// in degree C
d=4*10^-3;// in m
g=9.81;
h_bar = 0.725*[ rho^2*g*h_fg*k^3/(N*miu*d*(T_sat-T_s))]^(1/4);// in W/m^2k
m=300/(60*60);
// Formula m=q/h_fg
q=m*h_fg;
disp(q*10^-3,"Heat transfer rate in kW")
// Formula q=h_bar*%pi*d*L*N^2*(T_sat-T_s)
L=q/(h_bar*%pi*d*N^2*(T_sat-T_s));
disp(L,"Length of tube in m");

// Note: Answer in the book is wrong