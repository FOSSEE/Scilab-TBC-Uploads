//Caption:Find (a)Pulse amplitude (b)PRF (c)PW (d)Duty cycle and (e)M/S ratio
//Exa:1.1
clc;
clear;
close;
v=1//Vertical scale(Volt per division)
h=0.1//Horizontal scale(Milli sec per division)
pv=3.5//Amplitude of pulse in divisions
t=6//Time in divisions
pw=2.5//Width of pulse
P=pv*v
disp(P,'(a)Pulse Amplitude (in volts)=')
T=t*h
prf=(1/T)*1000
disp(prf,'(b)PRF(in pps)=')
p=pw*h
disp(p,'(c)PW (in ms)=')
sw=pv*h
d=(p/T)*100
disp(d,'(d)Duty cycle(in %)=')
m=p/sw
disp(m,'(e)M/S ratio=')