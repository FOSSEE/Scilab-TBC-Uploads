clc
clear
//Initalization of variables
pa=14.7
pv=0.0356
pv2=0.04
cp=0.24
t1=70 //F
t2=15 //F
R=53.35
V=8000 //ft^3
//calculations
sh=0.622*pv/(pa-pv2)
hm2=cp*t1+ sh*1092.3
hm1=cp*t2+sh*1068.4
Q=hm2-hm1
m=144*(pa-pv2)*V/(R*(t2+460))
Q2=Q*m
//results
printf("Heat added per min = %d Btu/min",Q2)
disp("The answer is a bit different due to rounding off error in the textbook")
