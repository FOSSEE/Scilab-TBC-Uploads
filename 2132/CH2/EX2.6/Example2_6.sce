//Example 2.6
clc;
clear;
close;
//Given data :
format('v',6);
d=2;//in mm
d=d/1000;//in m
sigma_water=0.073;//N/m
sigma_mercury=0.510;//N/m
//Water-glass contact
w1=9.81;//kN/m^3(specific weight of water)
w1=w1*10^3;//N/m^3
theta=0;//in degree
h=4*sigma_water*cosd(theta)/w1/d;//in mm
disp(h*1000,"capillary rise for water glass contact in mm : ");
//Mercury-glass contact
w2=13.6*9.81;//kN/m^3(specific weight of mercury)
w2=w2*10^3;//N/m^3
theta=130;//in degree
h=4*sigma_mercury*cosd(theta)/w2/d;//in mm
disp(h*1000,"capillary rise for mercury glass contact in mm: ");
