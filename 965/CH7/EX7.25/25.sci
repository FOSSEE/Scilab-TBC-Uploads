clc;
clear all;
disp("Average velocity")
R=0.12;// radius of circular tube
ts=90;//degree C
disp("u = 2.7*r-3.2*r^2")
u=(2/R^2)*integrate('2.7*r-3.2*r^2','r',0,R);
disp("m/s",u,"Average velocity =")
disp("t=85*(1-2.2*r)")
m=integrate('(2.7*r-3.2*r^2)*(85*(1-2.2*r)*r)','r',0,R);
n=integrate('(2.7*r-3.2*r^2)*r','r',0,R);
tb=m/n;
disp("degree C",tb,"mean bulk temperature tb =")
Q=1000;//kJ/h
Q=Q*1000/3600;//J/s
A=2*%pi*R*1;
h=Q/(A*(ts-tb));
disp("W/m^2.C",h,"Heat transfer coefficient, h =")



