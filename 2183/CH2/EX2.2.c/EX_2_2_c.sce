// Example 2.2.c: Acceptance Angle
clc;
clear;
close;
n1=1.50;//Waveguide Refractive Index
n2=1.47;//Cladding Refractive Index
h= 1.3;// Wavelenght in micrometers
NA=sqrt(n1^2-n2^2);// Numerical Aperture
Oa=asind(NA);//ACCEPTANCE ANGLE
oa=floor(Oa);//
x=Oa-oa;//
disp("ACCEPTANCE ANGLE IS "+string(oa)+" DEGREE AND "+string(round((60*(x))))+" MINUTES ")
//answer is wrong in the textbook
