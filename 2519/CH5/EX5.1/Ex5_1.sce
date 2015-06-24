clc
clear
//Initialization of variables
rate= 5 //lbm/sec
Q=50 //Btu/s
h2=1020 //Btu/lbm
h1=1000 //Btu/lbm
V2=50 //ft/s
V1=100 //ft/s
J=778
g=32.2 //ft/s^2
gc=g
Z2=0
Z1=100 //ft
//calculations
dw=Q/rate -(h2-h1) -(V2^2- V1^2)/(2*gc*J) -g/gc *(Z2-Z1)/J
power=dw*rate
//results
printf("work done by the system = %.1f Btu/lbm",dw)
printf("\n Power = %.1f Btu/s",power)
