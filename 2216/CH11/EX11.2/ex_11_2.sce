//Example 11.2:position 
clc;
clear;
close;
a=8.2;//in micro meter
n1=1.45;//
n2=1.446;//
h1=1.31;//in micro meter
h2=1.55;///in micro meter
v1=((2*%pi*a*sqrt(n1^2-n2^2))/h1);//
v2=((2*%pi*a*sqrt(n1^2-n2^2))/h2);//
db=2.439;//
del=5.5096*10^-3;//
k1=1.0483;//mm^-1;//
k2=1.2839///m^-1
l1=((%pi)/(4*k1));//in mm
l2=((%pi)/(4*k2));//in mm
disp("output port positioned at "+string(l2)+" mm with respect to the input port will gather signals at h1=1310nm")
disp("output port positioned at "+string(l1)+" mm with respect to the input port will gather signals at h1=1550nm")
