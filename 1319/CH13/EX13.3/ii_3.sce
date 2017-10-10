// EMF Induced between wing tips.
clc;
clear;

l=6.1;
vel=800;
v=vel*1000/3600;
b=(50)*(10^-6);
e=b*l*v;

disp('volts',e,'The EMF induced between the wing tips=')
