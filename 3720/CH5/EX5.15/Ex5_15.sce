//Example 5_15
clc;clear;funcprot(0);
// Properties
rho=1000;//The density of water in kg/m^3
// Given values
v=0.03;//The flow rate of water in m^3/s
W_p=20;// kW
g=9.81;//The acceleration due to gravity in m/s^2
z_2=45;// m

// Calculation
m=rho*v;//The mass flow rate of water through the system in kg/s
E_ml=(W_p-(m*g*z_2)/1000);
printf('The lost mechanical power,E_mechloss=%0.2f kW\n',E_ml);
h_l=E_ml*1000/(m*g);
printf('The irreversible head loss,h_L=%0.1f m\n',h_l);
