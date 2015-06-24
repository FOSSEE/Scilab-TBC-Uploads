clc
clear
//Initalization of variables
alp=14 //degrees
vb=900 //ft/s
v1=2200 //ft/s
g=32.17 //ft/s^2
//calculations
vrc=v1*cosd(alp) - vb
W=(2*vrc)/g *vb
eta=W/(v1^2/ (2*g)) *100
bet=atand(v1*sind(alp) /vrc)
//results
printf("Blade work = %d ft-lb/lb",W)
printf("\n Efficiency = %.1f percent",eta)
printf("\n Blade angle = %.1f degrees",bet)
disp('The answers are a bit different due to rounding off error')
