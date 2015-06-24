// Exa 3.9
clc;
clear;
close;
format('v',6)
// Given data
Vm = 100;// in V
phi = %pi/6;// in degree
Vrms = Vm/(sqrt(2));// in V
// Rectangular form of the voltage 
RectForm= Vrms*expm(%i*phi)
disp(RectForm,"Rectangular form of the voltage in V is : ")
disp("Polar form of the voltage :")
disp("Magnitude of voltage in V is : "+string(abs(RectForm))+" V")
disp("Angle is : "+string(atand(imag(RectForm),real(RectForm)))+" °")
