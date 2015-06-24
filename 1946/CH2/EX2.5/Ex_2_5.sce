// Example 2.5:Cutoff Wavelengt
clc;
clear;
close;
n1=1.5;//Waveguide Refractive Index
n2=1.47;//Cladding Refractive Index
a=4;// core radius in micro meters
NA=sqrt(n1^2-n2^2);// Numerical Aperture
Hc= (2*%pi*a*NA)/(2.405)
disp(Hc,"Cutoff wavelenght in micro meters")
