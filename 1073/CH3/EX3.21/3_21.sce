
clc;
clear;
//Example 3.21
k_tube=111.65    //[W/m.K]
W=4500    //[kg/h]
rho=995.7    //[kg/sq m]
Cp=4.174    //[kJ/(kg.K)]
k=0.617    //[W/(m.K)]
v=0.659*10^-6    //Kinematic viscosity [sq m/s]
m_dot=1720    //kg/h
T1=293    //Initial temperature in [K]
T2=318    //Final temperature in [K]
dT=T2-T1    //[K]
Q=m_dot*Cp*dT    //Heat transfer rate in [kJ/h]
Q=Q*1000/3600    //[J/s] or [W]
Di=0.0225    //[m]
u=1.2    //[m/s]
//Nre=Di*u*rho/mu or
Nre=Di*u/v    //Reynolds number
//As Nre is greater than 10000,Dittus Boelter equation is applicable
Cp=Cp*10^3    //J/(kg.K)
mu=v*rho    //[kg/(m.s)]
Npr=Cp*mu/k    //Prandtl number
//Dittus-Boelter equation for heating is 
Nnu=0.023*(Nre^0.8)*(Npr^0.4)
hi=k*Nnu/Di    //Heat transfer coefficient  [W/(sq m.K)]
Do=0.025    //[m]
Dw=(Do-Di)/log(Do/Di)    //Log mean diameter in [m]
ho=4650    //[W/sq m.K]
k=111.65    //[W/m.K]
xw=(Do-Di)/2    //[m]
Uo=1/(1/ho+Do/(hi*Di)+xw*Do/(k*Dw))    //Overall heat transfer coefficient in W/(m^2.K)
T_steam=373    //Temperature of condensing steam in [K]
dT1=T_steam-T1+10    //[K]
dT2=T_steam-T2+10    //[K]
dTm=(dT1-dT2)/log(dT1/dT2)    //[K]
Ao=Q/(Uo*dTm)//Area in [m^2]
L=4    //length of tube [m]
n=Ao/(%pi*Do*L)    //number of tubes
printf("No. of tubes required=%d\n",round(n));
printf("\n NOTE: there is an error in book in calculation of dT1 and dT2,\n 373-293 is written as 90,instead of 80...similarly in dT2,\nSo,in compliance with the book,10 is added to both of them") 
