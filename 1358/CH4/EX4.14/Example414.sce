// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 4, Example 14")
disp("The absolute Mach number of the air at the impeller tip is:")
disp("M2 = C2/(gamma*R*T2)^0.5")
disp("where T2 is the static temperature at the impeller tip. Let us first calculate C2 and T2.")
U2 = 364;
sigma = 0.89;
Cw2 = sigma*U2
disp("From the velocity triangle,")
Cr2 = 28;
C2 = (Cr2^2+Cw2^2)^0.5
disp("With zero whirl at the inlet")
disp("W/m = sigam*U2^2 = Cp (T02 - T01)")
T01 = 288;
Cp = 1005;
T02 = T01 + sigma*U2^2 / Cp
disp("Static Temperature")
T2 = T02 - C2^2 /(2*Cp)
gamma = 1.4;
R = 287;
M2 = (C2^2/(gamma*R*T2))^0.5
disp("Using the isentropic P–T relation:")
disp("Ratioa = P02/P01 ")
etac = 0.88;
Ratioa = (1+etac * (T02/T01  - 1))^3.5
disp("Ratiob = P2/P02")
Ratiob = (T2/T02)^3.5
P01 = 1*100;
disp("Static Pressure in kPa")
P2 = Ratiob*Ratioa*P01
rho2 = P2*1000/(R*T2)
disp("Mass flow: in kg/s")
A = 0.085;//m2
m = rho2*Cr2*A
