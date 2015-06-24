// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 18")
disp("For torque, using angular momentum equation")
disp("T = m(Cw2r2 - Cw1r1)")
disp("As the flow is radial at outlet, Cw2 = 0 and therefore")
Cw2 = 0;
disp("T = -mCw1r1")
disp(" - rQCw1r1")
disp("T = -225Cw1 Nm")
disp("If h1 is the inlet runner height, then inlet area, A, is")
h1 = 0.035;
r1 = 0.5;
A = 2*%pi*r1*h1
Q = 0.45;
Cr1 = Q/A
g = 9.81;
H = 125;
rho = 1000;
disp("From velocity triangle, velocity of whirl")
alpha = 70;
disp("Substituting Cw1, torque is given by")
Cw1 = Cr1 * tan(alpha *%pi/180)
T = -1 * 225* Cw1
disp("Negative sign indicates that torque is exerted on the fluid. The torque exerted by the fluid is +2534Nm")
Ta = -1*T;
disp("Power exerted")
N = 1250;
omega = 2*%pi*N/(60*1000)
P = Ta * omega
disp("Hydraulic efficiency is given by")
disp("etah = Power exerted/Power available")
etah = P * 1000/ (rho * g * H * Q ) * 100
