clc
clear
//Initalization of variables
n=1.4
t1=540 //R
tmax=1500 //F
pr=5
cp=0.24
t3=1558 //R
net=125.8 //Btu/lb
//calculations
Q=cp*(tmax+460-t3)
Qt=2*Q
eta=net/Qt*100
//results 
printf("Thermal efficiency = %.1f percent",eta)
