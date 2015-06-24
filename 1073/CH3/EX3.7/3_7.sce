clc;
clear;
//Example 3.7
rho=0.998    //kg/cubic m
v=20.76*10^-6    //[sq m/s]
Cp=1.009    //[kJ/kg.K]
k=0.03    //[W/m.K]
u_inf=3    //[m/s]
x=0.4    //[m]
w=1.5    //[m]
Nre_x=u_inf*x/v    //Reynolds no at x=0.4 m
//Since this is less than 3*10^5.The flow is laminar upto x=0.4 m
mu=rho*v  //[kg/(m.s)]

Cp=1.009    //[kJ/kg.K]
Cp=Cp*1000    //[J/kg.K]
k=0.03    //W/(m.K)
Npr=Cp*mu/k
Nnu_x=0.332*(sqrt(Nre_x))*(Npr^(1.0/3.0))
hx=Nnu_x*k/x    //[W/(m.K)]
//Average value is twice this value
h=2*hx    //[W/(m.K)]
h=10.6      //Approximation
A=x*w    //Area in [sq m]
Tw=407    //[k]
T_inf=293    //[K]
Q=h*A*(Tw-T_inf)     //[W]
//From both sides of the plate:
Q=2*Q    //[W]
printf("The heat transferred from both sides of the plate is %d W",round(Q));


