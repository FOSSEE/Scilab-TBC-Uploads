//Example 1 4
clc ;
clear;
close;
f=9;      //assuming frequency to be a constant 9Hz.
t =0:.01:10;
x= cos (2* %pi *f*t);
plot (t,x);
xlabel('Time');
ylabel('Amplitude');
title('Plot of given sequence to test periodicity');
disp ( 'Plotting the signal and showing that it is periodic with period=1/f' );
