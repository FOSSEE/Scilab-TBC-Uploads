// Example 8.1: critical resolved shear stress of silver
clc;
clear;
close;
format('v',5)
Ts=15;//tensile stress in Mpa
d=[1;1;0];
d1=[1;1;1];
csda=((d(1,1)*d1(1,1))+(d(2,1)*d1(2,1))+(d(3,1)*d1(3,1)))/((sqrt(d(1,1)^2+d(2,1)^2+d(3,1)^2))*sqrt(d1(1,1)^2+d1(2,1)^2+d1(3,1)^2));//angle degree
d2=[0;1;1];
csdb=((d(1,1)*d2(1,1))+(d(2,1)*d2(2,1))+(d(3,1)*d2(3,1)))/((sqrt(d(1,1)^2+d(2,1)^2+d(3,1)^2))*sqrt(d2(1,1)^2+d2(2,1)^2+d2(3,1)^2));//angle degree
t=Ts*csda*csdb;//critical resolved shear stress in MPa
disp(t,"critical resolved shear stress in MPa")
