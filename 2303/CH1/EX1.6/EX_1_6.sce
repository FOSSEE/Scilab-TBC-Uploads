//Example 1 6
clc ;
clear;
close;
f=9;      //assuming frequency to be a constant 9Hz.
t =0:.1:10;
x= t+sin(4*180*f*t)+cos(2*180*f*t);
disp(x);
disp('Since value of the signal at any time t is known, it is a DETERMINISTIC signal');
