//Example 11.2: Sag
clc;
clear;
close;
//given data :
format('v',5)
l=30;// in meter
w=0.72;// weight per meter in kg
E=640;// in kg/cm^2
d=1;// diameter in cm
T=E*(%pi/4)*d^2;
del=((w*l^2)/(2*T))*100;
disp(del,"sag(cm) = ")
