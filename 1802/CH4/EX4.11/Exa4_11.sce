//Exa 4.11
clc;
clear;
close;
//Given Data :
format('v',5);
r=0.75*10;//in mm
d=1.5*10^3;//in mm
ds=0.7788*r;//in mm
L=4*10^-7*log(d/ds);//in H/m
L=L*10^6;//in mH/km
disp(L,"Inductance of line(in mH/km) :");