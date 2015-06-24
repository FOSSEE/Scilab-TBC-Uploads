clc;
clear;

printf("\n Example 12.1\n");

d=250e-3; //internal diameter of pipe
u=15; //Velocity of air through the pipe
y1=50e-3; //First point where velocity is to be found out
y2=5e-3; //Second point where velocity is to be found out
rho_air=1.10; //Density of air
Meu_air=20e-6; //Viscosity of air

Re=d*u*rho_air/Meu_air;
//Hence, from Figure 3.7: X=R/(rho*u^2)=0.0018
X=0.0018;
u_s=u/0.817;
u_star=u*X^0.5;

//At 50 mm from the wall:
y1_r=2*y1/d;// y/r
//Hence, from equation 12.34:
u_x1=u_s+2.5*u_star*log(y1_r);
printf("\n The fluid velocity at 50 mm from the wall = %.1f m/s",u_x1);

//At 5 mm from the wall:
y2_r=2*y2/d;// y/r
//Hence, from equation 12.34:
u_x2=u_s+2.5*u_star*log(y2_r);
printf("\n The fluid velocity at 5 mm from the wall = %.1f m/s",u_x2);

//The thickness of the laminar sub-layer is given by equation 12.54:
del_b=5*d/(Re*X^0.5);
printf("\n The thickness of the laminar sub-layer = %.3f mm",del_b*1e3);