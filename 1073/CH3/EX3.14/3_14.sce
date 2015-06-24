clc;
clear;
//Example 3.14
v=2.08*10^-5    //[sq m/s]
k=0.03    //W/(m.K)
Npr=0.697    //Prandtl number
D=0.06    //[m]
u_inf=0.3    //[m/s]
Nre=D*u_inf/v    //Reynolds number
//Average nusselt number is given by:
Nnu=0.37*(Nre^0.6);
h=Nnu*k/D    //W/sq m.K
Tw=400    //[K]
T_inf=300    //[K]
D=0.06    //[m]
r=0.03    //[m]
A=4*%pi*r^2    //Area in [sq m]
Q=h*A*(Tw-T_inf)    //[W]
per=Q*100/100    //Percent of heat lost by forced convection
printf("Heat transfer rate is %f W,And percentage of power lost by convectio is: %f percent ",Q,per);
 