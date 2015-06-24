// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 4, Example 11")
disp("Let Uer be the impeller speed at the eye root. Then the vane angle at the eye root is:")
disp("alphaer = atan(Ca/Uer)")
Der = 0.14;//m
N = 15000;//rpm
Uer = %pi*Der*N/60
disp("Hence, the vane angle at the impeller eye root:")
Ca = 145;//m/s
alphaer = atan(Ca/Uer)*180/%pi
disp("Impeller velocity at the eye tip")
Det = 0.28;
Uet = %pi*Det*N/60
disp("Therefore vane angle at the eye tip:")
alphaet = atan(Ca/Uet)*180/%pi
disp("Work input:")
m = 10;
psi = 0.89;
sigma = 1.03;
D2 = 0.48;
U2 = %pi*D2*N/60
W = m*psi*sigma*U2^2  /1000
disp("The relative velocity at the eye tip:")
V1 = (Uet^2+Ca^2)^0.5
disp("Hence, the maximum relative Mach number at the eye tip:")
disp("M1 = V1/(gamma*R*T1)")
disp("where T1 is the static temperature at the inlet")
T01 = 290;
C1 = 145;
Cp = 1005;
T1 = T01 - C1^2 / (2*Cp)
disp("The Mach number at the inlet then is:")
gamma = 1.4;
R = 287;
M1 = (V1)/(gamma*R*T1)^0.5
