//Example 2.3://percentage error
clc;
clear;
close;
v=100;//volts
i=10;//amperes
pf=0.45;//power factor
tp=v*i*pf;//true power in watts
f=50;//Hz
l=25;//mH
r=4000;//ohms
b=atan((2*%pi*f*l*10^-3)/r);//phase angle in radians
e=v*i*tan(b)*sqrt(1-pf^2);//
per=(e*100)/(tp);//
disp(per,"percentage error is (%)")
