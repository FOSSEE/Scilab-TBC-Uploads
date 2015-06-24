//Caption: Calculate the speed of the motor when it is loaded and takes 60A from the mains
//Exa:7.10
clc;
clear;
close;
V=230//Voltage of motor(in volts)
n=800//Speedof motor(in r.p.m)
i=5//Current taken by motor(in A)
r_a=0.25//Armature resistance(in ohms)
r_f=230//field resistance(in ohms)
i_l=60//Load current(in A)
i_f=V/r_f
i_a=i-i_f
E_b1=V-(i_a*r_a)
i_al=i_l-i_f
E_b2=V-(i_al*r_a)
N=(n*E_b2)/E_b1
disp(N,'Required speed of motor(in r.p.m) is=')