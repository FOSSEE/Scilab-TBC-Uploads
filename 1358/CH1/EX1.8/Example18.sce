// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 1, Example 8")
//Let us suppose
//Velocity of the model, Vm
//Length of the model, Lm = 160mm
//Length of the prototype Lp = 1000mm
//Velocity of the prototype Vp = 40.5m/s
//According to (Re)m = (Re)p
//Also Vm*Lm/vm = Vp*Lp/vp
disp("Velocity of wind(m/s) in the tunnel implies = ")
Vm = 40.5 * 1000 / 160
