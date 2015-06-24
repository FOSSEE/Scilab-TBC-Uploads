//Example 14.5
//Program to Determine the Magnitude and the Frequency of the 
//wave Voltage fed to the Y-input
clear;
clc ;
close ;
//Given Circuit Data
Am=3.5; //V, Amplitude
tb=0.1*10^(-3); //seconds
TP=4; //Time Period
//Calculation
Vm=2*Am;
V=Vm/sqrt(2);
T=TP*tb;
f=1/T;
//Displaying The Results in Command Window
printf("\n\t The Magnitude of Wave Voltage, V = %f V .",V);
printf("\n\t The Frequency of Wave Voltage, f = %f kHz .",f/10^3);
//Plot of the given Wave
figure
x=-6:0.01:6;
y=Am*cos(1.6*x); //Given Waveform
plot (x,y);
a= gca ();
a.x_location="origin";
a.y_location="origin";
xlabel ('X Axis');
ylabel ('Y Axis');
title ('CRO OUTPUT');
xgrid (6);