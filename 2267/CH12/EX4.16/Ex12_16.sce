//Part B Chapter 4 Example 16
clc;
clear;
close;
d1=80;//mm
b=1.75;//mm
l=1.6;//m
T=80;//Nm
G=82;//GN/m^2
d2=d1-2*b;//mm
Ip=%pi/32*(d1^4-d2^4)*10^-12;//m^4
theta=T*l/Ip/(G*10^9);//radian
disp("Angular twist is "+string(theta)+" radian.");
