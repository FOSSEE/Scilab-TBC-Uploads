//Example 1 5
clc ;
clear;
close;
f=9;      //assuming frequency to be a constant 9Hz.
t =0:.1:10;
x1= cos (2* %pi *f*t);
x2=t+x1;
plot (t,x2);
xlabel('Time');
ylabel('Amplitude');
title('Plot of given sequence to test periodicity');
disp ( 'Plotting the signal and showing that it is APERIODIC' );
