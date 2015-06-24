clc
N_s=0.14; // m^(3/4)s^(-3/2)
H=30; // m
p_v=7.38*10^3; // N/m^2
p_l=50*10^3; // N/m^2
rho=992; // kg/m^3
g=9.81; // m/s^2
H_L=0.2; // m

NPSH=2.8*N_s^(4/3)*H;
z1=NPSH+(p_v-p_l)/rho/g+H_L;
disp("The minimum level of the alarm =")
disp(z1)
disp("m")