//Example 2.7://resistance
clc;
clear;
close;
i=20;//amperes
v=100;//volts
pf=1;//power factor
p=v*i*pf;//watts
rp=5500;//ohms
th=150;//angle
kd=((rp*th)/p);//constant
wd=20;//watts per degree
rp1=wd*kd;//in ohms
adr=rp1-rp;//
disp(adr,"addition resistance in ohm is")
