// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 5, Example 15")
disp("Angles are in degrees, lengths in meters, velocities in m/s, temperatures are in Kelvins")
disp("Using Equation at the mean radius")
disp("Wc = Cp(DeltaTA + DeltaTB) =DeltaTS")
disp("Dif = T02-T01") 
Dif = 20;
tau = 0.94;
U = 200;
Ca = 155;
Cp = 1005;
N = 8000;
disp("tan(beta1)-tan(beta2) = Dift ------(A)")
Dift = Dif*Cp/(tau*U*Ca)
disp("Using Equation, the degree of reaction (DOF) is")
disp("DOF = Ca*(tan(beta1)+tan(beta2))/(2U)")
disp("tan(beta1)+tan(beta2) = Add ------(B)")
DOF = 0.5;
Add = DOF*2*U/Ca
disp("Solving (A) and (B) equations simultaneously")
beta1 = atan((Add+Dift)/2)*180/%pi
alpha2 = beta1;
beta2 = atan(1.29-tan(beta1*%pi/180))*180/%pi
alpha1 = beta2;
disp("Let rm be the mean radius")
rm = U/(2*%pi*N)//m
disp("Using continuity equation in order to find the annulus area of flow")
C1 = Ca/cos(alpha1*%pi/180)//m/s
T01 = 290;
T1 = T01-C1^2 /(2*Cp)
disp("Using isentropic relationship at inlet: p1/p01 = (T1/T01)^(gamma/(gamma-1))")
disp("Static pressure is P1 in bars")
P01 = 1;
P1 = P01*(T1/T01)^3.5
disp("Density in kg/m3")
R = 287;
rho1 = P1/(R*T1) *10^5
disp("From the continuity equation,")
m = 22;//kg
A = m/(rho1*Ca)
disp("blade height in m is")
h = A/(2*%pi*rm)
disp("At mean radius, and noting that blades beta, an equivalent to cascade, alpha, nominal air deflection is Epsilon")
Epsilon = beta1-beta2
disp("Using Fig. Ex515 for cascade nominal deflection vs. air outlet angle, the solidity,")
disp("s/c = 0.5")
disp("Blade aspect ratio = span/chord")
disp("Blade chord = C")
C = 0.089/3
disp("Blade pitch = s")
s = 0.5*C
disp("Both the Chord and pitch/span are in meters")
