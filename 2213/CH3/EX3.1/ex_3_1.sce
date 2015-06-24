//Example 3.1 // ampere hour required
clc;
clear;
close;
//given data :
r=5;//in cm
S=4*%pi*r^2;
t=0.005;//in mm
d=10.5;
m=S*t*d*10^-3;
Z=(0.001118*3600)/1000;
Amr=m/Z;
disp(Amr,"ampere hour required,(Ampere-hour)= ")
