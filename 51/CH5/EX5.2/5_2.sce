clc;
clear;
v2=1000;//ft/sec
p1=100;//psia
p2=18.4;//psia
T1=540;//degree R
T2=453;//degree R
dia=4;//inches
//m1=m2
//d1*A1*v1=d2*A2*v2
//A1=A2 and d=p/(R*T); since air at pressures and temperatures involved behaves as an ideal gas
v1=p2*T1*v2/(p1*T2);
disp("ft/sec",v1,"Velocity at section 1 =")
