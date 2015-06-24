// Exa 4.4
clc;
clear;
close;
format('v',6)
// GIven data
C = 318;// in µF
C = C * 10^-6;// in F
V = 230;// in V
f = 50;// in Hz
X_C = 1/(2*%pi*f*C);// in ohm
disp(X_C,"The capacitive reactance in ohm is");
I = V/X_C;// in A
disp(I,"The R.M.S value of current in A is");
Vrms = V;// in V
Irms = I;// in A
Vm = Vrms*sqrt(2);// in V
Im = Irms*sqrt(2);// in A
omega = 2*%pi*f;// in rad/sec
// V = Vm*sind(omega*t);
// i = Im*sind((omega*t)+(%pi/2));
//Equation for voltage: V = Vm*sind(omega*t) 
//Equation for current: i = Im*sind(omega*t)
disp("Voltage equation : v = "+string(Vm)+" sin ("+string(round(omega))+" t)")
disp("Current equation : i = "+string(Im)+" sin ("+string(round(omega))+" t + %pi/2)")
