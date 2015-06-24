//Example 3.2
clc;
clear;
close;
format('v',7);
//Given data :
h=1.5;//in m
w_w=9.81;//in kN/m^3
w_g=1.26;//in kN/m^3
w_m=13.6;//in kN/m^3
f=h*w_w;//kN/m^2
disp(f,"Intensity of pressure exerted by water column in kN/m^2 : ");
f=h*w_w*w_g;//kN/m^2
disp(f,"Intensity of pressure exerted by glycerine column in kN/m^2 : ");
f=h*w_w*w_m;//kN/m^2
disp(f,"Intensity of pressure exerted by mercury column in kN/m^2 : ");
