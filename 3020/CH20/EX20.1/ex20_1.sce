clc;
clear all;
M=2300;//magnetization in A/m
B=0.00314;//flux density in Wb/m^2
u0=4*%pi*1e-7;//permiability of vacume
H=(B/u0)-M;//magnetic force
ur=(M/H)+1;//relative permiability
disp('A/m',H,'magnetic force is:')
disp('',ur,'relative permiability is:')

