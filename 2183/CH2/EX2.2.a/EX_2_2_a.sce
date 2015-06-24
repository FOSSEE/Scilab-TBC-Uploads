// Example 2.2.a: Critical Angle
clc;
clear;
close;
n1=1.50;//Waveguide Refractive Index
n2=1.47;//Cladding Refractive Index
Oc=asind(n2/n1);//Critical Angle
oc=floor(Oc);//
x=Oc-oc;//
disp("CRITICAL ANGLE IS "+string(oc)+" DEGREE AND "+string(round((60*(x))))+" MINUTES ")
//answer is wrong in the textbook
