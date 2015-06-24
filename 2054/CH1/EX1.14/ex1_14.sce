//Exa:1.14
clc;
clear;
close;
f1=2;//in hertz
f=50;//in hertz
s_m=0.1;
V=400;//in volts
s1=0.04;//slip
s2=(0.2095-sqrt((0.2095)^2-s1))/2;
f_n=s2*40;
disp(f_n,'Slip Frequency (in Hertz)=')