clc;
clear;

printf("\n Example 11.3\n");

D=50e-3; //Diameter of the pipe
Q=2e-3; //Flow rate of benzene through pipe
rho_b=870; //Density of benzene
Meu_b=0.7e-3; //Viscosity of benzene

G=Q*rho_b; //Mass flow rate of benzene
Re=4*G/(Meu_b*%pi*D); //Reynolds number

//From equation 11.49:
del_b=62*D*Re^(-7/8);
printf("\n The thickness of the laminar sub-layer = %.3f mm",del_b*1e3);

area=%pi/4*D^2; //Cross sectional are of pipe
u=G/(rho_b*area); //mean velocity

//From equation 11.47:
u_b=2.49*u*Re^(-1/8);
printf("\n The velocity of the benzene at the edge of the laminar sub-layer = %.3f m/s",u_b);
