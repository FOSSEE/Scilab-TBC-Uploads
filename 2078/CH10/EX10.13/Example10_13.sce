//Exa 10.13
clc;
clear;
close;
//Given data :
h=80-50;//m
L=300;//m
T=2000;//kg
w=0.844;//kg/m
x=L/2-T*h/(w*L);//m
d_PO=L/2-x;//m
d_BO=L-x;//m
Smid=w*(L/2-x)^2/2/T;//m
S2=w*(L-x)^2/2/T;//m
Point_P=S2-Smid;//m
disp("Mid point P is "+string(Point_P)+" meter below point B or "+string(80-Point_P)+" meter above the water level.");
