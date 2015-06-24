// Example 2.1:Critical angle
clc;
clear;
close;
n2=1.402;//Waveguide Refractive Index
n1=1.495;//Cladding Refractive Index
no=1;// for air
Oc=asind(n2/n1);// Critical Angle
disp(Oc,"Critical angle in degree")
