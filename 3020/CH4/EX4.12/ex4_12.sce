clc;
clear all;
s = 1.4; // Area of window in square meters
b = 60; // Intensity level of window in Db
I0 = 1e-12; // Standard intensity in watts per square meters
//60=10log10(I1/1e-12);
//so..
I1=I0*1e6;// Intensity of sound in watts per square meters
p = I1*s;//The acoustic power entering via window
disp('watts',p,'The acoustic power entering via window is')
