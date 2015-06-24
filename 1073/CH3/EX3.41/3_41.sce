clc;
clear;
//Example 3.41
rho=0.910;           //Density in [kg/m^3]
Cp=1.009*1000;            //[J/kg.K]
k=0.0331;            //[W/m.K]
mu=22.65*10^-6;      //[N.s/m^2]
//Let a=smaller side
//b=bigger side
//Qa=ha*A*dT
//Qb=hb*A*dT
//Qa=1.14*Qb
//Given a*b=15*10^-4
//On solving we get:
a=0.03;          //[m]
b=0.05;          //[m]
A=a*b           //Area in [sq m]
Tf=388;          //[K]
Beta=1/Tf       //[K^-1]
T1=303;          //[K]
T2=473;         //[K]
dT=T2-T1        //[K]
v=mu/rho        
g=9.81      //m/s^2[acceleration due to gravity ]
hb=0.59*(((g*Beta*dT*(b^3))/(v^2))*Cp*mu/k)^(1/4)*(k/b)       //[W/sq m.K]
Qb=hb*A*(dT)            //[W]

Qa=1.14*Qb              //[W]
printf("\nDimensions of the plate are %fx%f m\n",a,b);
printf("\nHeat transfer when the bigger side held vertical is %f W\n",Qb);
printf("\nHeat transfer when the small side held vertical is %f W\n",Qa);
