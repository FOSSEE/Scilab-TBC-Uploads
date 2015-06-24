//Example 2.8.4.a // unknown resistor 
clc;
clear;
close;
//given data :
V=100;//in volts
I=5*10^-3;// in A
R_app=(V/I)*10^-3;
disp(R_app,"apparent resistor,R_app(kilo-ohm) = ")
