clc;
clear;
//Example 3.29
v=18.41*10^-6   //[sq m./s]
k=28.15*10^-3   //[W/m.K]
Npr=0.7 //Prandtl number
Beta=3.077*10^-3    //K^-1
g=9.81  //m/s^2
Tw=350  //[K]
T_inf=300   //[K]
dT=Tw-T_inf //[K]
L=0.3   //[m]
//1.Free Convection
Ngr=(g*Beta*dT*L^3)/(v^2) //Grashof number
Npr=0.7 //Prandtl number

Nnu=0.59*(Ngr*Npr)^(1.0/4.0)    //Nusselt number
h=Nnu*k/L   //Average heat transfer coefficient [W/sq m K]
printf("\n In free convection,heat transfer coeff,h=%f W/(sq m.K)\n",h)
//2.Forced Convestion
u_inf=4 //[m/s]
Nre_l=u_inf*L/v
Nnu=0.664*(Nre_l^(1/2))*(Npr^(1.0/3.0))     //Nusselt number
h=Nnu*k/L   //[W/sq m.K]
printf("\n In forced convection,heat transfer coeff,h=%f W/(sq m.K)\n",h)
printf("\n From above it is clear that heat transfer coefficient in forced convection is much larger than that in free convection \n  ");

