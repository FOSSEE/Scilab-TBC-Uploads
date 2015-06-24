//Caption: Calculate (a)Speed at which mechanical power from rotor will be maximum (b)Maximum power
//Exa:11.6
clc;
clear;
close;
p=4//Number of poles
f=50//Frequency(in hertz)
V=440//Supplied voltage to induction motor(in volts)
R_r=0.1//Rotor resistance per phase(in ohm)
X_r=0.8//Rotor reactance at standstill per phase(in ohm)
t=1.3//Ratio of stator turns per phase to rotor turns per phase
a=R_r/X_r
s=(-(a^2))+sqrt(1+(a^2))
n_s=120*f/p 
N=n_s*(1-s)
disp(N,'(a)Required speed(in r.p.m)=')
r=R_r*t
x=X_r*t
E=V/sqrt(3)
P_m=(3*s*(E^2)*r*(1-s))/((r^2)+((s^2)+(x^2)))
disp(P_m,'(b)Maximum power(in watts)=')