clc
clear
//Initalization of variables
v1=1234 //ft/s
v2=532 //ft/s 
kb=0.92
alp=20 //degrees
ve=900 //ft/s
r=2200 //ft/s
g=32.17 //ft/s^2
//calculations
vr=sqrt(v1^2 +v2^2)
vr2=vr*kb
vrc=vr2*cosd(alp)
W=(v1+vrc)*ve/g
eta=W/(r^2 /(2*g)) *100
//results
printf("Blade work = %d ft-lb/lb",W)
printf("\n Efficiency = %.1f percent",eta)
disp('The answers are a bit different due to rounding off error')
