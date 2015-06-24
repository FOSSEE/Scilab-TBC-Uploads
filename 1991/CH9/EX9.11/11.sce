clc
clear
//input
v=400//pd
d=4*10^-3 //distance of seperation
B=0.52//flux density
na=6*10^23//avagadro number
//calcuation
E=v/d//electric field strength
v1=E/B// speed of ions 
m=24*10^-3/na//mass of each ion
ke=m*v1*v1/2//kinetic energy 
W=1.6*10^-19*1
KE=ke/W//kinetic energy in electron volts
//output
printf("the electric field strength is %3.3e Vm^-1",E)
printf("\n the speed of ions is %3.3e m/s",v1)
printf("\n the kinetic energy is %3.3e J",ke)
printf("\n the kinetic energy in electron volts is %3.3f ev",KE)
