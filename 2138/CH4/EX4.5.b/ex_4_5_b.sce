//Example 4.5.b: current taken by load
clc;
clear;
close;
//given data :
V=220; // voltage in volts
l=300; // number of lamps
w1=60; // in watt
W1=w1*l;
w2=40; // in watt
f=100; // number of fan
W2=w2*f;
W=(W1+W2)*10^-3;
I=(W*1000)/V;
disp(I,"current,I(A) = ")
