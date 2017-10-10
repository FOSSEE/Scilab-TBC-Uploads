clc;
clear all;
disp("surface temperature of sun")
lmax=0.49;//mu m
T=2898/lmax;//mu.m
disp("K",T, "surface temperature of sun = ")

sigma=5.67*10^(-8);
Eb=sigma*T^4;//W/m^2
disp("W/m^2",Eb,"The total rate of energy emmision, Eb =")
