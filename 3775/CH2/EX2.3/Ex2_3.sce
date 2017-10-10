//Ex 2.3 page 68

clc;
clear;
close;

m=16;// V/A (gradient)
t_on=4;// us
IG=500;// mA
VS=15;// V

VG=m*IG/1000;// V
//Load line equation
//VG=VS-IG*RS
RS=(VS-VG)/(IG/1000) ;// ohm
Pg=VS*(IG/1000)**2 ; // W
printf('Gate power dissipation = %.f W',Pg)
printf('\n Resistance to be connected = %.f ohm',RS)
