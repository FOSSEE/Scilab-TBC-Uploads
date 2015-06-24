//Example 7.5.12: ammeter and voltmeter readings
clc;
clear;
close;
format('v',7)
t=200;// in volts
i=0.5;//in amperes
ra=10;//in ohms
x=t/i;//in ohms
r=x-ra;//in ohms
sv=10;//sensivity in killo ohms / V
v=1000;//in volts
rv=v*sv *10^-6;// in mega ohms
rp=((rv*10^6)*r)/(rv*10^6+r);//in ohms
vr=((t*rp)/(ra+rp));//voltmeter reading in volts
vi=vr/rp;//ammeter rading in amperes
disp(vr,"voltmeter reading in volts")
disp(vi,"ammeter rading in amperes")
