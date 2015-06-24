//Example 6.4 // Period of Oscillation 
clc;
clear;
//given data :
m1=8;// mass suspended in kg
l=.32;// length of spring stretched in m
m=.5;// new mass suspended in kg
g=9.8;//acceleration of gravity in m/s2
k=m1*g/l;// force constant  of spring in N/m
disp(k)
T=2*%pi*sqrt(m/k);// time period of Oscillation
disp(T,"Time Period of Oscillation sec")
// in book it is wrongly calculated
