
clc;
clear;
//Example 2.44
rho=8000    //kg/cubic m
Cp=420    //J/(kg.K)
h_hot=60    // for hot stream W/(sq m.K)    
dia=4    //[mm]
t=10;
r=dia/(2*1000)    //radius in [m]
//For sphere
V=(4/3)*%pi*r^3    //Volume in [cubic m]
A=4*%pi*r^2        //Volume in [sq m]
tao=rho*Cp*V/(h_hot*A)    // Time constant in [s]
ratio=%e^(-t/tao)    // %e^(-t/tao)=(T-T-inf)/(T0-T_inf)
T_inf=573    //[K]
T0=313    //[K]
T=T_inf+ratio*(T0-T_inf)
//ANS-[i]
printf("\n Answer: Time constant of thermocouple is %f s",tao);

//IN STILL AIR:
h_air=10    //W/(sq m .K)
tao_air=rho*Cp*V/(h_air*A)    //[s]
t_air=20    //[s]
ratio_air=%e^(-t_air/tao_air)
T_inf_air=303    //[K]
T0_air=T;
T_air=T_inf_air+ratio_air*(T0_air-T_inf_air)
//ANS-[ii]
printf("Temperature attained by junction 20 s after removing from the hot air stream is:%d K",round(T_air))
