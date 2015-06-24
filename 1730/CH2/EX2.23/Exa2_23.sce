//Exa2.23
clc;
clear;
close;
//given data
V=220;// in V
W=100;//in watt
R100=V^2/W;//in ohm
alpha20=0.005;
t1=20;
t2=2000;
// since R100=R20*[1+alpha20*(t2-t1)]
R20=R100/(1+alpha20 * (t2-t1));
I20=V/R20;
disp("Current flowing at the instant of switching on a 100 W metal filament lamp is : "+string(I20)+" A")