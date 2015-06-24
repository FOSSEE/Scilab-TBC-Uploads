////Example 7.9
clc;
clear;
close;
format('v',7);
//Given data :
g=9.81;//gravity constanty
Cc=0.62;//coefficient of contraction
D1=150/1000;//meter
D2=100/1000;//meter
Q=2.7/60;//m^3/sec
p1=0.8*10^4;//kg/m^2
v1=Q/(%pi/4*D1^2);//m/s
v2=Q/(%pi/4*D2^2);//m/s
hc=v2^2/2/g*(1/Cc-1)^2;//meter
w=1000;//kg/m^3
p2=(v1^2/2/g+p1/w-v2^2/2/g-hc)*w;//kg/m^2(Z1=Z2)
p2=p2*10^-4;//kg/cm^2
disp(p2,"Intensity of pressure in kg/cm^2 : ");
