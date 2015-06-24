//Caption:Find distribution factor of winding
//Exa:13.3
clc;
clear;
close;
ns=18//Number of slots
ph=3//Number of phases
p=2//Number of poles
m=ns/(ph*p)
P_p=ns/p
theta=180/P_p
k_b=sind(m*(theta/2))/(m*sind(theta/2))
disp(k_b,'Distribution factor=')