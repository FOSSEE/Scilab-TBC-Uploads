//Example 6.3 // Period of Oscillation 
clc;
clear;
//given data :
l=1;// length of pendulum in m
m=1;// mass of pendulum in kg
g=9.8;//acceleration of gravity in m/s2
T=2*%pi*sqrt(l/g);//time period
disp(T,"Period of Oscillation in sec")
