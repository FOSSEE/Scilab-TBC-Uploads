// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 4, Example 17")
disp("Pressure is in bar and temperature in Kelvin")
disp("Mechanical efficiency is")
disp("etam = Work transferred to air/Work supplied to shaft")
disp("or shaft power = W/etam")
disp("for vaned impeller, slip factor, by Stanitz formula is")
disp("sigma = 1 - 0.63*pi/n")
n = 17;
R = 287;
sigma = 1-0.63*%pi/n;
disp("Work input per unit mass flow")
disp("W = psi*sigma*U2Cw2")
psi = 1.04;
U2 = 475;//m/s
W = psi*sigma*U2^2 /1000
disp("Work input for 2.5 kg/s")
Wi = W*2.5
disp("Shaft Power")
etam = 0.96;
Pshaft = Wi/etam
disp("The overall pressure ratio is pRatio = P03/P01")
P01 = 1.01;
etac = 0.84;
Cp = 1005;
T01 = 288;
pRatio = (1+etac*psi*sigma*U2^2 /(Cp*T01))^3.5
disp("Stagnation pressure at diffuser exit")
P03 = P01*pRatio
m = 2.5;
T03 = Wi*1000/(m*Cp) +T01
T02 = T03;
disp("Static temperature at diffuser exit")
C3 = 90;
T3 = T03 - C3^2 /(2*Cp)
disp("Static pressure at diffuser exit")
P3 = P03*(T3/T03)^3.5
disp("The reaction is 0.5 = (T2 - T1)/(T3 - T1)")
disp("x = T3 - T1")
C1 = 150;
x = Wi*1000/(m*Cp) + (C1^2 - C3^2)/(2*Cp)
disp("y = T2-T1") 
y = 0.5*x
disp("Substituting T2 - T1")
T2 = T01 - C1^2 /(2*Cp) + y
disp("At the impeller exit")
disp("T02 = T2 + C2^2/2Cp")
disp("T03 = T2 + C2^2/2Cp (Since T02 = T03)")
C2 = (2*Cp*((T03-T01)+(T01-T2)))^0.5
disp("Mach number at impeller outlet")
M2 = C2/(1.4*R*T2)^0.5
disp("Radial velocity at impeller outlet")
Cw2 = sigma*U2;
Cr2 = (C2^2 - Cw2^2)^0.5
disp("Diffuser efficiency is given by")
disp("etaD = (h3a - h2)/(h3 - h2)")
disp(" = isentropic enthalpy increase/actual enthalpy increase")
disp(" = (T3a - T2)/(T3 - T2)")
disp(" z = P3/P2 implies")
etaD = 0.821;
z = (1+etaD *(T3-T2)/T2)^3.5
P2 = P3/z
disp("From isentropic P–T relations in bars")
P02 = P2*(T02/T2)^3.5
disp("Impeller efficiency is")
etai = T01*((P02/P01)^0.286 -1)/(T03-T01) * 100
rho2 = P2/(R*T2) * 10^5//in kg/m3
disp("m = rho2A2Cr2")
disp(" = 2pi*r2*rho2*b2")
m = 2.5;
b2 = 0.0065;
N = U2*2.27*246.58*b2*60/m
