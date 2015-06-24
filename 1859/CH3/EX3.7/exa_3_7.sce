// Exa 3.7
clc;
clear;
close;
// Given data
d=150;// in mm
i=2.5;// in micro amp
R=200;// in ohm
V= R*i;// in micro volt
r=2.5;// in meter
// Part(i)
Si= d/i;// in mm/micro amp
disp(Si,"Current sensitivity in mm/micro amp")

// Part(ii)
Sv= d/V;// in mm/micro volt
disp(Sv,"Voltage sensitivity in mm/micro volt")

// Part(iii)
So= 1/(1/60*10^-6);// in ohm/mm
So=So*10^-6;// in Mohm
disp(So,"Megohm sensitivity in Mohm/mm")

// Part(iv)
i=5;// in micro amp
d=60*i;// in mm
d=d*10^-3;// in meter
theta=d/(2*r);//in radian 
disp(theta,"Deflection in radians")
