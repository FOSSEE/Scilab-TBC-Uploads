// Example 2.17.b:Critical Internal Reflection Angle
clc;
clear;
close;
n1=1.5;//Waveguide Refractive Index
d= 0.0005;// Cange in core-cladding refractive index
n2= n1-(d*n1);
Oc=asind(n2/n1);
disp(Oc,"Critical Internal Reflection angle in degree is")
