// Chapter7
// Page.No-241
// Example7_4
// Sketch the output waveform
// Given
clc;
clear;
Vi=5;         //in V
Vsat=13;         //in V
R2=2000;           //in Ohm
R1=20000;           //in Ohm
Vupper=Vsat*R2/R1;
Vlower=-Vsat*R2/R1;
printf("\n Vupperthreshold  %.1f V",Vupper);
printf("\n Vlowerthreshold  %.1f V",Vlower);
t=(0:0.1:20)';
f=0.1;
x3=1*sin(2*f*%pi*t);
A=asin(Vupper);
k=atan(imag(A),real(A))


x4=squarewave(2*f*%pi*t-2*f*%pi*k,50)

plot(t,x3,t,x4);
//plot2d1();
xlabel('time n--->');
ylabel('Vout--->');
title('Input(Blue) / Output(Green)');
xgrid(color("grey"));
