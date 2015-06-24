clc
clear
//Initalization of variables
p=40000 //kW
ef=0.98
rate=302000 //lb
s3=1.6001
h2=1490.1
loss=600
v=400 //ft/s
g=32.2 //ft/s^2
J=778
//calculations
out=p/(0.746*ef)
srate=rate/out
X=-(s3-1.9782)/1.8456
h3=1106 - X*1036.3
theoturb=h2-h3
intturb=(out+loss)*2544/rate
Ie=intturb/theoturb *100
h3d=h2-intturb-v^2 /(2*g*J)
hex=h3d+ v^2 /(2*g*J)
excess=rate*(hex-h3)
//results
printf("Steam rate = %.2f lb/shaft hp-hr",srate)
printf("\n Internal engine efficiency = %.1f percent",Ie)
printf("\n Enthalpy of exhaust steam = %.1f Btu/lb",h3d)
printf("\n Excess heat to be removed = %d Btu/hr",excess)
disp("The answers are a bit different due to rounding off error in textbook")
