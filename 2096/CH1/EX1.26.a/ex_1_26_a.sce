//Example 1.26.a // the variation in the indicated temerature
clc;
clear;
close;
//given data :
Iin=25; // may be +ve or -ve
t1=20; // in seconds
t2=4; // in minutes
f=1/(t2*60); // cycles/sec
w=2*%pi*f; // rad/sec
pi=atand(w*t1);
A=sin(w*t2-pi);
Io=(Iin/sqrt(1+(w*t1)^2));
disp(Io,"the variation in the indiacated temperature,Io(degree celcius) = ±")
