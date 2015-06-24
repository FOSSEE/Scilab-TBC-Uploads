//Caption:Find the speed at which it will run as a motor
//Exa:7.9
clc;
clear;
close;
P_g=110000//Power of generator(in watts)
n=400//Speed of generator(in r.p.m)
V=220//Voltage of busbars(in volts)
P_m=10900//Power of motor(in watt)
r_a=0.025//Armature resistance(in ohms)
r_f=55//Field resistance(in ohms)
v_b=1//Voltage drop at each brush(in volt)
i_l=P_g/V
i_f=V/r_f
I_a=i_l+i_f
V_a=I_a*r_a
E=V+V_a+(2*v_b)
I_1=P_m/V
i_a=I_1-i_f
v_a=i_a*r_a
E_b=V-(i_a*r_a)-(2*v_b)
N_m=(n*E_b)/E
disp(N_m,'Speed at which generator will run as motor is(in r.p.m)=')