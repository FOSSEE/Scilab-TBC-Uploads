// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 4, Example 16")
disp("At eye root, Ca = 150 m/s")
Ca = 150;
C1 = Ca / cos(20*%pi/180)
Cw1 = Ca*tan(20*%pi/180)
disp("Impeller speed at eye root")
Der = 0.18;
N = 15500;//rpm
Uer = %pi*Der*N/60//m/s
disp("From velocity triangle")
betaer = atan(Ca/(Uer-Cw1))*180/%pi
disp("At eye tip from Figure")
Det = 0.3175;
Uet = %pi*Det*N/60
alphaet = atan(Ca/(Uet-Cw1))*180/%pi
disp("Mach number will be maximum at the point where relative velocity is maximum.")
disp("Relative velocity at eye root is:")
Ver = Ca/sin(betaer*%pi/180)
disp("Relative velocity at eye tip is:")
Vet = Ca/sin(alphaet*%pi/180)
disp("Relative velocity at the tip is maximum.")
disp("Static temperature at inlet:")
T01 =288;
Cp = 1005;
T1 = T01-Vet^2 /(2*Cp)
gamma = 1.4;
R = 287;
Mmax = Vet/(gamma*R*T1)^0.5
