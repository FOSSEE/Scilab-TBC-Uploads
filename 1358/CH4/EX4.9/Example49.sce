// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 4, Example 9")
sigma = 0.8958;
U2 = 449.9;
Cw2 = sigma*U2
disp("Using the continuity equation,")
disp("m=rho2*A2Cr2 = rho2*2*pi*r2b2Cr2")
disp("where: b2 = axial width,r2 = radius. Therefore:")
m = 2.5;
rho2 = 1.8;
r2 = 0.25;
b2 = 0.012;
Cr2 = m / (rho2*2*%pi*b2*r2) 
disp("Absolute velocity at the impeller exit")
C2 = (Cr2^2+Cw2^2)^0.5
disp("The temperature equivalent of work done:Weq = T02 - T01")
Cp = 1.005;
Weq = 188.57/Cp
T02 = 293+Weq
disp("Hence the static temperature at the impeller exit is:")
T2 = T02 - C2^2 / (2*Cp*1000)
disp("Now, the Mach number at the impeller exit is:")
gamma = 1.4;
R = 287;
M2 = C2 / (gamma*R*T2)^0.5
