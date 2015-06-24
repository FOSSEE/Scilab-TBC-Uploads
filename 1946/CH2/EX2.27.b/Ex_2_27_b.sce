// Example 2.27.a:Numerical Aperture
clc;
clear;
close;
n1=1.5;//Core Refractive Index
n2=1.48;//Cladding Refractive Index
a=50;//Core radius in micro meters
NA=sqrt(n1^2-n2^2);// Numerical Aperture
Oc=asind(n2/n1);
disp(Oc,"Critical Angle")
