//Example 1.25.b // the time lag
clc;
clear;
close;
//given data :
t1=50; // in seconds
t2=500; // in seconds
w=2*%pi/t2;
P=atan(w*t1)
T=(1/w)*P
disp(T,"the time lag,T(seconds) = ")
