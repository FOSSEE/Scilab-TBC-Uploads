clc;
clear;
//Example 3.8
rho=0.998    //[kg/cubic m]
v=20.76*10^-6    //[sq m/s]
k=0.03    //[W/m.K]
Npr=0.697
x=0.4    //[m] from leading edge of the plate
u_inf=3    //[m/s]
Nre_x=u_inf*x/v    //Reynold numebr at x=0.40 m
//Since this is less than 3*10^5    
//therefore flow is laminar and 
Nnu_x=0.332*sqrt(Nre_x)*(Npr^(1.0/3.0));
hx=Nnu_x*k/x    //[W/sq m.K]
//Average heat tarnsfer coefficient is twice this value
h=2*hx    //[W/sq m.K]
//Given:
Q=1450    //[W]
Tw=407    //[K]
T_inf=293    //[K]
L=0.4    //[m]
//Q=h*w*L*(Tw-T_inf)
//L=Q/(h*w*(Tw-T_inf))
w=Q/(h*L*(Tw-T_inf))    //[m]
printf("\n Width of plate is %f m",w);


