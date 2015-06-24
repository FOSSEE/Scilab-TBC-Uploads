// Example 8.3: yield strength of material
clc;
clear;
close;
ys1=120;// yeild strength in MN/mm^2
ys2=220;// yeild strength in MN/mm^2
d1=0.04;//diamtere in mm
d2=0.01;//diamtere in mm
A=[2 10; 1 10];
B=[240;220];
x=A\B;
si=x(1,1);// in MN/mm^2
k=x(2,1);//
d3=0.025;//in mm
sy= si +(k/sqrt(d3));//yeild strength for a grain size in MN/mm^2
disp(sy,"yeild strength for a grain size in MN/mm^2")

