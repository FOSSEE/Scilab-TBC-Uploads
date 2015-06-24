//Example 1.13 //voltage ,current and frequency
clc;
clear;
close;
format('v',5)
vl=600;//in volts
p=200;//power absorbed in watts
pf=0.05;//power factor
f=30*10^6;//frequency in Hz
ep=8.854*10^-12;//constant
er=5;//
a=150;// in cm^2
t=0.02;// in meter
c=((ep*er*a*10^-4)/t);//capacitance in farads
vr=(sqrt(p/(2*%pi*f*c*pf)));//voltage is required in volts
i=p/(vr*pf);//current in amperes
f2=((f*(vr/vl)^2))*10^-6;//frequency in Mhz
disp(ceil(vr),"voltage in volts")
disp(round(i),"current in amperes")
disp(f2,"frequency in MHz")
