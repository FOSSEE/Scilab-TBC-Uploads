// Example 8_13
clc;funcprot(0);
// Given data
T=20.0+273.15;// K
mu=0.700;// N.s/m^2
L=0.100;// m
R_1=0.0500;// m
R_2=0.0510;// m
n=1000;// rev/min

// Solution
omega=(2*%pi*n)/60;// rad/s
S_P_W=((2*%pi*L*omega^2*R_1^4*mu)/((R_2^2-R_1^2)^2*T))*((2*R_2^2*(log(R_2/R_1)))+((R_2^4)/(2*R_1^2))-(R_1^2/2));// W/K
printf("\nThe rate of entropy production due to laminar viscous losses,(S_P)w=%1.2f W/K",S_P_W);
