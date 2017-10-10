//Example 14-13
clc;clear;
// Properties
rho=998;//The density of water at 20°C in kg/m^3
// Given values
D_a=2.05;//Diameter in m
n_a=120;//rpm
n_b=120;//rpm
omega_a=12.57;//rad/s;
V_a=350;//m^3/s
H_a=75.0;//m
H_b=104;//m
bhp_a=242;//MW
rho_a=998;// kg/m^3
rho_b=998;// kg/m^3
g=9.81//m/s^2
n_ta=bhp_a*10^6/(rho_a*g*H_a*V_a);//Efficiency of turbine A

// Calculation
D_b=D_a*(sqrt(H_b/H_a))*(n_a/n_b);
printf('The diameter of the new turbine,D_b=%0.2f m\n',D_b);
V_b=V_a*(n_b/n_a)*(D_b/D_a)^3;
printf('Volume flow rate,V_b=%0.0f m^3/s\n',V_b);
bhp_b=bhp_a*(rho_b/rho_a)*(n_b/n_a)^3*(D_b/D_a)^5;
printf('The brake horsepower of new turbine, bhp_b=%0.0f MW\n',bhp_b);
n_tb=1-((1-n_ta)*(D_a/D_b)^(1/5));
printf('Efficiency of the turbine B=%0.3f \n',n_tb);
