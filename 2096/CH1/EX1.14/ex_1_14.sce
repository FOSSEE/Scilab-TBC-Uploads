
//Example 1.14// temperature range
clc;
clear;
close;
//given data :
a=800; // calibration range in celcius
b=300; // calibration range in celcius
c=.11; // percentage of span
S=a-b;
D=(.11/100)*500;
disp(S,"span of pyrometer,S(degree celcius) = ")
disp(D,"dead zone,D(degree celcius) = ")
