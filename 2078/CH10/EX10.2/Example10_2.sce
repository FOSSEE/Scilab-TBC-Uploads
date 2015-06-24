//Exa 10.2
clc;
clear;
close;
//Given data :
W=680;//kg/km
L=260;//m
U_strength=3100;//kg
SF=2;//safety factor
Clearance=10;//m
T=U_strength/SF;//kg
w=W/1000;//kg
S=w*L^2/(8*T);//,m
h=Clearance+S;//m
disp(h,"Height above the ground(m) :");
