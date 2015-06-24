//Example 8.1 // speed
clc;
clear;
close;
//given data :
pi=22/7;
s=22; // shaft of the motor in hp
Tsh=210; // torue in hp
N=(s*60*746)/(2*pi*Tsh);
disp(N,"speed,N(rpm) = ")
