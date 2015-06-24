//Example 2.7
clc;
clear;
close;

//Given data :
format('v',5);
d=6;//in mm
d=d/1000;//in m
sigma=0.0755;//N/m
//At equillibrium : p*%pi*r^2=sigma*2*%pi*r
r=d/2;//in m
p=2*sigma/r;//N/m^2
disp(p,"Intensity of pressure in N/m^2 or Pascals : ");
