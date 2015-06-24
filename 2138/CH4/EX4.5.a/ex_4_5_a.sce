//Example 4.5.a: total load
clc;
clear;
close;
//given data :
l=300; // number of lamps
w1=60; // in watt
W1=w1*l; // wattage required for 300 lamps, 60 watt each
w2=40; // in watt
f=100; // number of fan
W2=w2*f;// wattage required for 100 fans, 40 watt each
W=(W1+W2)*10^-3;
disp(W,"total load,W(kilo-watt) = ")
