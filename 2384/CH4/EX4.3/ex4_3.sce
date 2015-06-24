// Exa 4.3
clc;
clear;
close;
format('v',6)
// Given data
I = 10;// in A
V = 230;// in V
f = 50;// in Hz
X_L = V/I;// in ohm
disp(X_L,"Inductive reactance in ohm is");
// X_L = 2*%pi*f*L;
L = X_L/(2*%pi*f);// in H
disp(L,"Inductance of the coil in H is");
Vrms = V;// in V
Irms = I;// in A
Vm = Vrms*sqrt(2);// in V
Im = Irms*sqrt(2);// in A
omega = 2*%pi*f;// in rad/sec
//Equation for voltage: V = Vm*sind(omega*t) 
//Equation for current: i = Im*sind(omega*t)
disp("Voltage equation : v = "+string(Vm)+" sin ("+string(round(omega))+" t)")
disp("Current equation : i = "+string(Im)+" sin ("+string(round(omega))+" t - %pi/2)")
