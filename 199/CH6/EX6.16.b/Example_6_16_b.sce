// Chapter6
// Page.No-238
// Example_6_16_b
// Output waveform of differentiator
// Given
clear;clc;
step=0.01;
t=0:step:2*%pi;
dy=diff(sin(t))/step; //approximate differentiation of sine function
Vo=-1.5*10^3*0.1*10^-6*2*%pi*10^3*dy;
plot(Vo);
title('Output Voltage');
xlabel('t');
ylabel('Vo'); 
