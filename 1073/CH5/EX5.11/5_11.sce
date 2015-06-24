clc;
clear;
//Example 5.11
mw_dot=1720;         //water in [kg/h]
t1=293 ;             //[K]
t2=318 ;             //[K]
Cpw=4.28;            //[kJ/kg.K]
Q=mw_dot*Cpw*(t2-t1)    //[kJ/h]
Q=Q*1000/3600           //W
lambda=2230;         //[kJ/kg]
dT1=90 ;             //[K]
dT2=65 ;             //[K]
dTlm=(dT1-dT2)/log(dT1/dT2)     //[K]

//Calculation of inside heat transfer coefficient
Di=0.0225;            //[m]
u=1.2 ;          //[m/s]\
rho=995.7 ;          //[kg/m^3]
v=0.659*10^-6           //[m/s]
mu=v*rho        //[kg/m.s]
Nre=Di*u*rho/mu     //reynolds number
Cp=Cpw*1000         //[J/kg.K]
k=2.54 ;     //[kJ/h.m.K]
k=k*1000/3600           //[W/m.K]
Npr=Cp*mu/k             //Prandtl number
Nnu=0.023*Nre^0.8*Npr^0.4       //Nusselt number
hi=k*Nnu/Di             //[W/sq m.K]
ho=19200            //[kJ/h.m^2.K]
ho=ho*1000/3600     //[W/m^2.K]
Do=0.025        //[m]
Dw=(Do-Di)/log(Do/Di)       //[m]
x=(Do-Di)/2     //[m]
kt=460           //For tube wall material [kJ/h.m.K]
kt=kt*1000/3600         //[W/m.K]
Uo=1/(1/ho+(1/hi)*(Do/Di)+(x/kt)*(Do/Dw))        //[W/sq m.K]
//Q=Uo*Ao*dTlm
Ao=Q/(Uo*dTlm)          //[sq  m]
L=4             //Tube length in [m]
n=Ao/(%pi*Do*L)         //[Number of tubes]
n=round(n)          //Approximate
printf("\n Number of tubes reuired= %d",n);
