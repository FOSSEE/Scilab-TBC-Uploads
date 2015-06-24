//Example 1.21.// resistance
clc;
clear;
close;
//given data :
R1=90; // stable resistance
t1=12; // in seconds
t2=4.8; // in seconds
G=.296; // steady stage gain
T=80; // change of temperature
R=G*T;
Rt=R*(1-exp(-t1/t2))+R1;
disp(Rt,"resistance,Rt(ohm) = ")
