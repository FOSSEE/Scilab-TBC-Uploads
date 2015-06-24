// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 7, Example 8")
disp("From Velocity tiangles")
disp("C is velocity in m/s, angles are in degrees")
Ca = 255;//m/s
alpha2 = 60;
Cw2 = Ca * tan(alpha2*%pi/180)
alpha3 = 12;
Cw3 = Ca * tan(alpha3*%pi/180)
U = 345;//m/s
Vw2 = Cw2-U//m/s
beta2 = atan(Vw2/Ca)*180/%pi
Vw3 = Cw3+U//m/s
beta3 = atan(Vw3/Ca)*180/%pi
disp("Degree of Reaction DOR")
phi = Ca/U;
DOR = phi*(tan(beta3*%pi/180) - tan(beta2*%pi/180))/2 *100
psi = Ca*(tan(beta2*%pi/180) + tan(beta3*%pi/180))/U
m = 20;
disp("W in kW")
W = m*U*(Cw2+Cw3)
disp("lambdaN = 2Cp(T2-T2a)/C2^2")
lambdaN = Ca*sec(alpha2*%pi/180)
C2 = lambdaN;
disp("T2-T2a = R")
Cp = 1147;
Ra = 0.05*0.5*lambdaN^2 /Cp
T02 = 1150;//K
T01 = T02;//K
T2 = T02 - C2^2 /(2*Cp)//K
T2a = T02-C2^2 /(2*Cp) - Ra
P01 = 4//bars
P2 = P01/(T01/T2)^4
R = 0.287;
disp("rho2 is density in kg/m3")
rho2 = P2/(R*T2) *100
disp("Area in m2")
m = 20;
A2 = m/(rho2*C2)
