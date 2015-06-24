//Ex3_9 Pg-185
clc

n=1 //constant
T=27+273 //temperature in K
Vt=T/11600
V=0.2 //voltage
I0=10^(-6) //saturation current
I=I0*(exp(V/Vt)-1)
stat_res=V/I //static resistance
printf("Static resistance = %.2f ohm \n",stat_res)

dyn_res=Vt/(I+I0) //dynamic resistance
printf("Dynamic resistance = %.2f ohm",dyn_res)
