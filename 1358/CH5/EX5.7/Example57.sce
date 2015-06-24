// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 5, Example 7")
disp("The following equation provides the relationship between the temperature rise and the desired angles:")
disp("T02 - T01 = lambda*U*Ca*(tan(beta1) - tan(beta2))/Cp")
disp("T02-T01 = Rise")
Rise = 24;
lambda = 0.93;
U = 205;
Ca = 155.5;
Cp = 1005;
disp("Dif = tan(beta1) - tan(beta2)")
Dif = Rise*Cp/(U*lambda*Ca)
disp("Using the degree of reaction equation:")
disp("DOF = Ca*(tan(beta1) + tan(beta2))/(2*U)")
disp("tan(beta1) + tan(beta2) = Add")
DOF = 0.5;
Add = DOF*2*U/Ca
beta1 = atan((Add+Dif)/2)*180/%pi
alpha2 = beta1
beta2 = atan(Add - tan(beta1*%pi/180))*180/%pi
alpha1 = beta2
disp("The mean radius, rm, is given by: in m")
N = 152;//rpm
rm = U/(2*%pi*N)
disp("The blade height, h in m, is given by: m = rho*ACa, where A is the annular area of the flow.")
C1 = Ca/cos(alpha1*%pi/180)
T01 = 290;
disp("Static temperature in kelvin")
T1 = T01- C1^2 /(2*Cp)
disp("Using the isentropic P–T relation:")
disp("Static pressure: P1 in bars")
P01 = 1;
P1 = P01*(T1/T01)^3.5
R = 287/1000;
disp("Density rho1 in kg/m3")
rho1 = P1/(R*T1) * 100
disp("From the continuity equation:")
m = 22;
A = m/(rho1*Ca)
disp("and the blade height:")
rm = 0.215;
h =A/(2*%pi*rm)
