//Caption:Find the time of Commutation
//Exa:7.13
clc;
clear;
close;
p=4//Number of poles
n=600//Speed of generator(in r.p.m)
d=0.4//Diameter of commutator(in m)
c=243//Number ofcommutator segments
c_s=3//Coil sides per layer
w=12.5//Width of brush(in mm)
W=0.6//Width of mica between commutator segments
W_c=(%pi*d*1000)/(c)
D=w-W+(2*W_c)
V_c=(%pi*d*n)/60
T=D/V_c*(10^(-3))
disp(T,'Time of commutation(in sec)=')