// Example 8.2: yield strength of material
clc;
clear;
close;
format('v',6)
ys1=115;// yeild strength in MN/mm^2
ys2=215;// yeild strength in MN/mm^2
d1=0.04;//diamtere in mm
d2=0.01;//diamtere in mm
A=[2 10; 1 10];
B=[230;215];
x=A\B;
si=x(1,1);// in MN/mm^2
k=x(2,1);//
d3=0.016;//in mm
sy= si +(k/sqrt(d3));//yeild strength for a grain size in MN/mm^2
disp(sy,"yeild strength for a grain size in MN/mm^2")

