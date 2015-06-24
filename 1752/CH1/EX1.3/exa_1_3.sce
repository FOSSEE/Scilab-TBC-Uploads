//Exa 1.3
clc;
clear;
close
// given data
t_f=30;// in degree C
t_s=400;// in degree C
d=0.04;//in m
h=20;// in W/m^2K
l=1;//in meter
A=%pi*d*l;
q=h*A*(t_s-t_f);// in W

disp(q,"Rate of heat loss in watt is : ")
