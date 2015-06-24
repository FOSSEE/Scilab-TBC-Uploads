//Example 1.20.// calculate the time taken by the transducer to read half of the temperature difference
clc;
clear;
close;
//given data :
t1=3; // in seconds
I=0.5; // in celcius
T=(-t1)*(log (I));
disp(T,"the time taken,T (second) = ")
