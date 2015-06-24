// Exa 4.1
clc;
clear;
close;
format('v',6)
// Given data
R = 10;// inohm
V = 230;// in V
f = 50;// in Hz
I = V/R;// in A
disp(I,"The currrent in A is");
P =V*I;// in W
disp(P,"The power consumed in W is");
Vm = sqrt(2)*V;// in V
Im =sqrt(2)*I;// in A
omega = 2*%pi*f;// in rad/sec
//Equation for voltage: V = Vm*sind(omega*t) 
//Equation for current: i = Im*sind(omega*t)
disp("Voltage equation : v = "+string(Vm)+" sin ("+string(round(omega))+" t)")
disp("Current equation : i = "+string(Im)+" sin ("+string(round(omega))+" t)")
