// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 4, Example 12")
disp("Figure shows the velocity triangle with the prewhirl angle. From the velocity triangle:")
Ca = 145;//m/s
C1 = Ca/cos(20*%pi/180)//m/s
disp("Equivalent dynamic temperature: Eq = C1^2/2Cp")
Cp = 1005;
Eq = C1^2 / (2*Cp)
Cw1 = Ca*tan(20*%pi/180)
disp("Relative velocity at the inlet:")
Ue = 220;//m/s
V1 = (Ca^2 +(Ue - Cw1)^2)^0.5
disp("Therefore the static temperature at the inlet:")
T01 = 290;//K
T1 = T01-Eq
gamma = 1.4;
R = 287;
M1 = V1/(gamma*R*T1)^0.5
disp("Note the reduction in Mach number due to prewhirl.")
