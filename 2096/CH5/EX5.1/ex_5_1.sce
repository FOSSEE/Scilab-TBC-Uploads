//Example 5.1 // frequency
clc;
clear;
close;
//given data :
N=45; // count
t=10; // gate period in ms
f=(N/(t*10^-3))*10^-3;
disp(f,"frequency,f(k-Hz) = ")
