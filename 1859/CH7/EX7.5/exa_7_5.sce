// Exa 7.5
clc;
clear;
close;
// Given data
f=1000;//in Hz
R1=1000;//in ohm
R2=1000;// in ohm
R3=2000;//in ohm
R4=2000;//in ohm
C1=1*10^-6;//in F
r1= 10;// in ohm
omega=2*%pi*f;
C2=C1*R1/R2;//in F
disp(C2*10^6,"Unknown capacitance in micro F ");

r2=(R2*(R3+r1)-R1*R4)/R1;//in ohm 
del_1=omega*r1*C1;//in radian
del_1=del_1*180/%pi;// in °
disp(del_1,"Phase angle error1 in degree");
del_2=omega*r2*C2;//in radian
del_2=del_2*180/%pi;// in degree
disp(del_2, "Phase angle error2 in degree");
