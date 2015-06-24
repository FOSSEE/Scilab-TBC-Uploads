// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 5, Example 11")
disp("As no inlet guide vanes alpha1 = 0; Cw1 = 0")
disp("Stagnation temperature, T01 in Kelvins, is given by")
T01 = 290;
C1 = 145;
Cp = 1005;
Ca = C1;
T1 = T01 - (C1/(2*Cp)) - 1
disp("The Mach number relative to tip is")
M = 0.96;
gam = 1.4;
R = 287;
V1 = M*(gam*R*T1)^0.5 *1.04
disp("i.e., relative velocity at tip = 340.7 m/s. From velocity triangle at inlet Fig 511")
Ut = (V1^2 - C1^2)^0.5
disp("Radius in m")
N = 5500;
rt = Ut*60/(2*%pi*N)
beta1 = atan(Ut/Ca)*180/%pi
DeltaT0s = 22;
Tau = 0.92;
disp("tan(beta1) - tan(beta2) = Dif")
Dif = DeltaT0s*Cp/(Tau*Ut*Ca)
beta2 = atan(1.588)*180/%pi
h = 0.268;
rm = 0.402;
A = 2*%pi*rm*h//m2
P01 = 1;//bar
P1 = P01*(T1/T01)^3.5
R = 287;
rho1 = P1/(R*T1) * 10^5
m = rho1*A*Ca
disp("Stage pressure ratio is")
etas = 0.9;
Rs = (1+etas*DeltaT0s/T01)^3.5
W = Cp*DeltaT0s//kJ/kg
disp("Power required by the compressor in kW")
P = m*W/1000
disp("In order to find out rotor air angles at the root section, radius at the root can be found as given below.")
rr = rm - h/2
disp("Impeller speed at root is")
Ur = 2*%pi*rr*N/60
disp("Therefore, from velocity triangle at root section")
beta1 = atan(Ur/Ca)*180/%pi
disp("tanbeta1 - tanbeta2 = R")
R = DeltaT0s*Cp/(Tau*Ur*Ca)
beta2 = atan(tan(46.695*%pi/180)-1.078)*180/%pi
