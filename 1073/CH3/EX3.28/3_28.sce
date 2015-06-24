clc;
clear;
//Example 3.28
mair_dot=0.90   //[kg/s]
T1=283  //[K]
T2=366  //[K]
dT=(T1+T2)/2    //[K]
Di=12   //[mm]
Di=Di/1000  //[m]
G=19.9  //[kg/(sq m.s)]
mu=0.0198   //[mN.s/(sq m)]
mu=mu*10^-3 //[N.s/sq m] or [kg/(m.s)]
Nre=Di*G/mu //Reynolds number
//It is greater than 10^4
k=0.029 //W/(m.K)
Cp=1    //[kJ/kg.K]
Cp1=Cp*10^3  //[J/kg.K]
Npr=Cp1*mu/k //Parndtl number
//Dittus-Boelter equation is
hi=0.023*(Nre^0.8)*(Npr^0.4)*k/Di   //[W/sq m.K]
ho=232  //W/sq m.K
U=1/(1/hi+1/ho) //Overall heat transfer coefficient  [W/m^2.K]
Q=mair_dot*Cp*(T2-T1)   //kJ/s
Q=Q*10^3    //[J/s] or [W]
T=700   //[K]
dT1=T-T2    //[K]
dT2=T2-T1   //[K]
dTm=(dT1-dT2)/log(dT1/dT2)  //[K]
//Q=U*A*dTm
A=Q/(U*dTm) //Area in sq m
printf("Heat transfer area of equipment is %f sq m",A);
