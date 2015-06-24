clear;
clc;
printf("\t\t\tExample Number 4.4\n\n\n");
// heat removal from semi-infinite solid
// illustration4.4
// solution

alpha = 8.4*10^(-5);// [square meter/s] constant
Ts = 200;// [degree celsius] initial temperature of of slab
x = 0.04;// [m] depth at which temperature is calculated
T_x_t = 120;// [degree celsius] temperature at depth 0.04 m
To = 70;// [degree celsius] surface temperature after lowering
k = 215;// [W/m degree celsius] heat transfer coefficient 
// We first find the time required to attain the 120 degree celsius temperature 
// and then integrate equation(4-12) to find the total heat removed during this interval 
t = (x/(erfinv(((T_x_t-To)/(Ts-To)))*2*sqrt(alpha)))^(2);// [s]
printf("time taken to attain the temperature of 120 degree celsius %f s",t);
// the total heat removed at the surface is obtained by integrating equation(4-12):
// Qo_by_A = integrate('qo_by_A','dt',0,t)
// or Qo_by_A = integrate('k*(To-Ts)/(sqrt(%pi*alpha*t))','dt',0,t)
Qo_by_A = integrate('k*(To-Ts)/(sqrt(%pi*alpha*t))','t',0,t);
printf("\n the total heat removed from the surface is %e J/square meter",Qo_by_A);




