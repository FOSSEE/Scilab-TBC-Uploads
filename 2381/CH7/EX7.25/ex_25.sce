//Example 25 //Velocity
clc;
clear;
close;
//given data :
v=1.8*10^8;// in m/s
lamda=3.6*10^-7;// in m
dv_dlamda=3.8*10^13;// in per sec
vg=v-(lamda*dv_dlamda);
disp(vg,"The group velocity,vg(m/s) = ")
