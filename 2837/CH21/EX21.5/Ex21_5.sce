clc
clear
//Initalization of variables
v1=1234
v2=532
kb=0.92
alp=20 //degrees
ve=900
r=2200 //ft/s
g=32.17 //ft/s^2
J=778
w=67000
//calculations
vr=sqrt(v1^2 +v2^2)
vr2=vr*kb
vrc=vr2*cosd(alp)
reheat=(vr^2 - vr2^2 )/(2*g*J)
v22=sqrt((vrc-ve)^2 +(vr2*sind(alp))^2)
ein=r^2 /(2*g*J)
eout=w/J + v22^2 /(2*g*J)
re2=ein-eout
//results
printf("\n In case 1, Blade reheat = %.2f Btu/lb",reheat)
printf("\n In case 2, Blade reheat = %.1f Btu/lb",re2)
