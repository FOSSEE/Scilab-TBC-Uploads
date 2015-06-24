//Ex:2.2
clc;
clear;
close;
z=79;//atomic no. of gold
e=7.68*1.6*10^-13;//ke in J
e_c=1.6*10^-19;//charge of electron in C
e_0=8.854*10^-12;//permittivity F/m
d=(2*e_c^2*z)/(4*3.14*e_0*e);//distance in m
disp(d,"distance (in m) = ");