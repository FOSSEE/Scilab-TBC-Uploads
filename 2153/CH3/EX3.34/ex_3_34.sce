// Example 3.34: size of unit cell
clc;
clear;
close;
n=1;//
a=1;//assume
h=0.58;//wavelnegth in armstrong
th=9.5;//reflection angle in degree
a1=[2;0;0];//miller indices
d200=a/(sqrt(a1(1,1)^2+a1(2,1)^2+a1(3,1)^2));//interplanar distance between (200)planes
a=((n*h)/(2*d200*sind(th)));//zsize of unit cell
disp(a,"size of unit cell in Ä")
//amswer is wrong in the textbook
