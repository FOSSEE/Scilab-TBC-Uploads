
clc;
clear;
//Example 3.9
v=17.36*10^-6    //Viscosity for air    [sq m./s]
k=0.0275    //for air ..[W/(m.K)]
Cp=1.006    //[kJ/(kg.K)]
Npr=0.7    //for air
u_inf=2    //[m/s]
x=0.2    //[m]
Nre_x=u_inf*x/v    //Reynolds number at x=0.2    m
//Since this is less than 3*10^5
Nnu_x=0.332*sqrt(Nre_x)*(Npr^(1.0/3.0))
hx=Nnu_x*k/x    //[W/(sq m.K]
//Average value of heat transfer coeff is twice this value
h=2*hx    //[W/sq m.K)]
h=12.3      //Approximation
w=1    //width in [m]
A=x*w    //[sq m] Area of plate
Tw=333    //[K]
T_inf=300    //[K]
Q=h*A*(Tw-T_inf)    //Heat flow in [W]
printf("\nANSWER:\nHeat flow is :%f W\n",Q)
//From both sides of plate:
Q=2*Q    //[W]
printf("\nANSWER\n Heat flow from both sides of plate is %f W",Q);
 
