// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 12")
disp("Mean diameter D")
D = (4+1.75)/2
N =145;
U1 = %pi*D*N/60
g = 9.81;
H = 20;
disp("Using hydraulic efficiency, etah")
etah = 0.93
Cw1 = etah*g*H/U1
Power = 12000*0.746
disp("Power = rho*g*Q*H*etao")
etao = 0.85
disp("Discharge, Q")
Q = Power/(g*H*etao)
Cr1 = Q*4/(%pi*(4^2-1.75^2))
beta1 = atan(Cr1/(U1-Cw1))*180/%pi
U2 =U1
Cr2 = Cr1
beta2 = atan(Cr2/U2)*180/%pi
