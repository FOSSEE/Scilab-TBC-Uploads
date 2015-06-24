// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 4, Example 2")
disp("Slip factor: sigma = Cw2/U2")
U2 = 370;
sigma = 0.9;
Cw2 = sigma * U2
disp("The absolute velocity at the impeller exit:")
Cr2 = 35; //m/s
C2 = (Cr2^2+Cw2^2)^0.5
disp("The mass flow rate of air: m = rho2 *A2*Cr2")
rho2 = 1.57;//kg/m3
A2 = 0.18;//m2
m = rho2*A2*Cr2
disp("The temperature equivalent of work done (neglecting c):")
disp("Therefore, T02 - T01 =sigma*U2^2/Cp")
T01 = 290;
Cp = 1005;
T02 = T01 + sigma*U2^2/Cp
disp("The static temperature at the impeller exit, ")
T2 = T02 - C2^2/(2*Cp)
disp("The Mach number at the impeller tip:")
gamma = 1.4;
R = 287;//
M2 = C2 / (gamma *R*T2)^0.5
disp("The overall pressure ratio of the compressor (neglecting psi): P03/P01")
etac = 0.88;//efficiency
psi = 1;//neglected
ratio = (1+etac*sigma*psi*U2^2  /(Cp*T01))^3.5
