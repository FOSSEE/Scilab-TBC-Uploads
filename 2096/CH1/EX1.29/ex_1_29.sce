//Example 1.29 // output
clc;
clear;
close;
//given data :
Iin=0.35; // sinusoidl input relation
t=0.3; // sec
w=25; // rad/sec
a=1/sqrt(1+(w*t)^2);
Io=Iin*a;
pi=atand(w*t);
disp(pi,"the phase shift,pi(celcius)")
disp("the output expression,Io = 0.0462sin(25t-82.4)")
