//Example 2.3.6: resolution
clc;
clear;
close;
//given data :
V=9.999;// full scale read out in volt
c=9999;// range from 0 to 9999
R=(1/c)*V*10^3;
disp(R,"resolution,R(mV) = ")
