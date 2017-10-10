clc;
clear;
rad=10^-3 //radius of wire in m
l=1 //length of the wire in m
T=900 //temperature of the body in K
T0=300 //temperature of the surrounding in K
sigma=5.68*10^-8 // Stefan-Boltzmann Constant in J/m^2sK^4
alpha=7.8*10^-3 //temperature coefficient of resistance 
delta_T=600 //difference in temperature of the body and surrounding in K
rho_300=%pi^2*10^-8 //resistivity in ohm-m 

//calculation
E=sigma*(T^4-T0^4)*2*%pi*rad*l //in watt
rho_900=((1+alpha*delta_T)*rho_300)// resistivity in ohm-m
R_900=rho_900*(l/(%pi*rad^2)) //resistance in ohm
I=sqrt(E/R_900)
mprintf("The current in the wire is %d amp.",I)
