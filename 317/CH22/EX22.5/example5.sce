// find duty cycle of output waveform
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 22-5, page 855

clear;clc; close;
	
// Given data
Vp=10;// peak voltage in volts
Vcc=15;// in volts from the figure
C=10*10^-6;// capacitance in faraday
R1=200*10^3;// resistance in ohms
R2=100*10^3;// resistance in ohms

// Calculations
// input is a sine wave it is 10sin(angle)
Vref=(R2/(R1+R2))*Vcc;// reference voltage in volts
// output is a rectangular waveform whose trip point is 5 Volts
angle1=asin(Vref/Vp)*180/%pi;// angle where switching occurs
angle2=180-angle1;// other angle where switching occurs
angle=angle2-angle1;// conduction angle in degrees
D=angle*100/360;// duty cycle in %
disp("%",D,"duty cycle=")

// Result
// duty cycle is 33.3 %