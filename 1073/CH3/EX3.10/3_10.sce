clc;
clear;
//Example 3.10
v=16.96*10^-6    //[sq m./s]
rho=1.128    //[kg/cubic m]
Npr=0.699    //Prandtl number
k=0.0276    //[W/m.K]
u_inf=15    //[m/s]
L=0.2    //[m]
Nre_l=L*u_inf/v    //Reynold's number
//Since this is less than 3*10^5,the boundary layer is laminar over entire length
Nnu=0.664*sqrt(Nre_l)*(Npr^(1.0/3.0))
h=Nnu*k/L    //[W/sq m.K]
A=L^2    //Area in [sq m]
Tw=293    //[K]
T_inf=333    //[K]
//Rate of heat transfer from BOTH sides is:
Q=2*h*A*(T_inf-Tw)    //[W]
printf("Rate of heat transfer from both sides of plate is %f W\n",Q);
//ii-With turbulent boundary layer from the leading edge:
h=k*0.0366*(Nre_l^(0.8))*(Npr^(1.0/3.0))/L       //[W/(sq m.K)]
//Heat transfer from both sides is :
Q=2*h*A*(T_inf-Tw)            //[W]
printf("\nThese calculations sho that the that transfer rate is approximately doubled if boundary layer is turbulent from the leading edge \n");  


