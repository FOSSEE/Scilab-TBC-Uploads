// Example 2.11:diameter
clc;
clear;
close;
v1=1.2;//
v2=2.4;//
h=0.85;//in micro meter
n1=1.5;//refrative index
d1=0.015;//
a1=((v1*h)/(2*%pi*n1*sqrt(2*d1)));//in micro meter
d2=0.0015;//
a2=((v2*h)/(2*%pi*n1*sqrt(2*d2)));//in micro meter
disp(2*a1,"diameter (case 1) in micro meters is")
disp(2*a2,"diameter (case 2) in micro meters is")
//answer is wrong in the textbook

