//Example 2.3.5: resolution
clc;
clear;
close;
//given data :
V=200;// full scale reading in volts
N=100;// number of divisions 
Scale_div=V/N;
R=(1/10)*Scale_div;
disp(R,"resolution,R(V) = ")
