////Example 7.8
clc;
clear;
close;
format('v',6);
//Given data :
g=9.81;//gravity constanty
f=0.02;//coefficient of friction
Cc=0.62;//coefficient of contraction
//Portion AB
Q1=50*10^-3;//m^3/sec
D1=150/1000;//meter
v1=Q1/(%pi/4*D1^2);//m/s
hr=0.5*v1^2/2/g;//meter
L1=200;//meter
hf1=4*f*L1*v1^2/2/g/D1;//meter
D2=200/1000;//meter
v2=Q1/(%pi/4*D2^2);//m/s
hc1=(v1-v2)^2/2/g;//meter
L2=500;//meter
hf2=4*f*L2*v2^2/2/g/D2;//meter
d=75/1000;//meter
ho=[(%pi/4*D2^2)/Cc/((%pi/4*D2^2)-(%pi/4*d^2))-1]^2*v2^2/2/g;//meter
D3=120/1000;//meter
v3=Q1/(%pi/4*D3^2);//m/s
hc2=v3^2/2/g*(1/Cc-1)^2;//meter
L3=500;//meter
hf3=4*f*L3*v3^2/2/g/D3;//meter
Kb=0.25;//assumed
hb1=Kb*v3^2/2/g;//meter
D4=120/1000;//meter
v4=Q1/(%pi/4*D4^2);//m/s
L4=500;//meter
hf4=4*f*L4*v4^2/2/g/D4;//meter
hb2=Kb*v3^2/2/g;//meter
L5=500;//meter
hf5=4*f*L5*v4^2/2/g/D4;//meter
h_outlet=v3^2/2/g;//meter
h_total=hr+hf1+hc1+hf2+ho+hc2+hf3+hb1+hf4+hb2+hf5+h_outlet;//meter
disp(h_total,"Total loss of head in meter : ");
