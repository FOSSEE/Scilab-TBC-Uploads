clc;
clear;

printf("\n Example 11.2\n");

x=150e-3; //Distance from leading edge where thicness is to be found
Meu_o=0.05; //viscosity of oil
rho_o=1000; //Density of oil
u=0.3; //Velocity of flow

Re_x=x*u*rho_o/Meu_o;
//For streamline flow:
//from equation 11.17
del=4.64*x/Re_x^0.5;//thickness of the boundary layer
printf("\n The thickness of the boundary layer = %.1f mm",del*1e3);
//from equation 11.20
del_star=0.375*del;
printf("\n The displacement thickness = %.1f mm",del_star*1e3);
