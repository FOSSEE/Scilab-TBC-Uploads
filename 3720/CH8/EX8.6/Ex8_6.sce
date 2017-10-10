//Example 8_6
clc;clear;funcprot(0);
//Given values
V_1=7;// m/s
P_1=150// kPa
D_1=0.06;// m
D_2=0.09;// m
// Assumptions
//alpha_1=alpha_2=1.06
alpha_1=1.06;
alpha_2=1.06;
g=9.81;// m/s^2
//Properties
rho=1000;//The density of water in kg/m^3
K_L=0.07;// The loss coefficient for gradual expansion
theta=60;// Total included angle in degree

//Calculation
V_2=(D_1^2/D_2^2)*V_1;// The downstream velocity of water in m/s
h_L=K_L*(V_1^2/(2*g));// m
printf('The irreversible head loss in the expansion section,h_L=%0.3f m\n',h_L);
P_2=P_1+(rho*(((alpha_1*V_1^2)-(alpha_2*V_2^2))/2-(g*h_L)))/1000;// kPa
printf('The pressure in the larger-diameter pipe,P_2=%0.0f kPa\n',P_2);
