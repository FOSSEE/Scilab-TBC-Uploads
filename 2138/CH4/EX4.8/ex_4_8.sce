//Example 4.8: current taken by load
clc;
clear;
close;
//given data :
V=250; // voltage in volts
L=5*746; // 1 hp=746 watt
eta=80;// eficiency of motor in %
Input=(L*100)/80; 
I=Input/V;
disp(I,"cureent,I(A) = ")
