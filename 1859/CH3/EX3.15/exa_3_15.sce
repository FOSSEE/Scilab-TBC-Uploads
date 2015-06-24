// Exa 3.15
clc;
clear;
close;
// Given data
Im= 0.2*10^-3;// in amp
Rm= 10;// in ohm
V=100;// in volt
R= V/Im-Rm;// in ohm
disp(R*10^-3,"External required resistance in kohm")
Im1= 0.75*Im;//in amp
V1= Im1*(R+Rm);// in volt
disp(V1,"Applied voltage at instrument current 0.75 FSD in volt");

Im2= 0.5*Im;//in amp
V2= Im2*(R+Rm);// in volt
disp(V2,"Applied voltage at instrument current 0.5 FSD in volt");

Im3= 0.25*Im;//in amp
V3= Im3*(R+Rm);// in volt
disp(V3,"Applied voltage at instrument current 0.25 FSD in volt");

Im4= 0.1*Im;//in amp
V4= Im4*(R+Rm);// in volt
disp(V4,"Applied voltage at instrument current 0.1 FSD in volt");
