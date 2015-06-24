//scilab 5.4.1
//Windows 7 operating system
//chapter 11 Sinusoidal oscillator and multivibrators
clc
clear
R=4700//R=resistance in a phase-shift oscillator in ohm
C=(0.01*10^(-6))//C=capacitance in a phase-shift oscillator in farad
f=1/(2*%pi*sqrt(10)*R*C)
disp("kHz",f/10^3,"Frequency of oscillation f is =")//converting f in terms of kHz
