clc;
clear;
printf("\n Example 8.10\n");

Meu_H2=0.009e-3; //Viscosity of hydrogen
P2=2e6; //Downstream Pressure
P1=2.5e6;//Upstream pressure
P_m=(P1+P2)/2;//Mean Pressure
T=295;//Temperature of the gas
l=500;//Length of the pipe used
d=50e-3;//diameter of pipe used
rho_H2=2*P_m*273/(22.4*101.3e3*T);//Density of hydrogen at the mean pressure
A=%pi*d^2/4;//Area of the pipe
eta=0.60; //Efficiency of the pump
v_m=1/rho_H2;
//Firstly, an approximate value of G is obtained by neglecting the kinetic energy of the fluid
//Using equation 4.56
//phi*Re^2=7.02 * 10 ^8
//Taking the roughness of the pipe surface, e as 0.00005 m
//e/d= 0.001 and Re = 5.7 x 10^5 from Figure 3.8
//G=.201(approximate value)
//From Figure 3.7, 
phi=0.0024;
//Taking the kinetic energy of the fluid into account, equation 4.56 may be used:
x=poly([0],'x');
G=roots((x/A)^2*log(P1/P2)+(P2-P1)*rho_H2+4*phi*l/d*(x/A)^2);
printf("\n Mass flow rate = %.2f kg/s",G(1));
P=G(1)*P_m*v_m*log(P1/P2)/eta;
printf("\n Power required = %.1f kW",P*1e-3);