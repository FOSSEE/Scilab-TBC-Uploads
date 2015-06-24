// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 7, Example 4")
disp("Nozzle Throat area in m2, A = m/(rho2*Ca2)")
disp("rho2 = P2/(RT2)")
disp("T2 = T02 - C2^2 /(2Cp)")
T02 = 1100;//Kelvin
C2 = 550.67;//m/s
Cp = 1.147;
T2 = T02 - C2^2 /(2*Cp*1000)
disp("From nozzle loss coefficient")
lambdaN = 0.05;
T2a = T2 - lambdaN *C2^2 /(2*Cp*1000)
disp("Using isentropic p–T relation for nozzle expansion")
P01 = 5;//bars
gam = 1.33;
T01 = T02;
P2 = P01/((T01/T2a)^(gam/(gam-1)))
disp("Critical Pressure ratio = r = P01/Pc")
r = ((gam+1)/2)^(gam/(gam-1))
disp("P01/P2 = r1")
r1 = P01/P2
disp("Since r1<r, and therefore nozzle is unchoked.")
C2 = (2*Cp*1000*(T01-T2))^0.5//m/s
disp("Therefore, nozzle throat area in m2")
R = 0.287;
rho2 = P2*100/(R*T2)//kg/m3
m = 15;//ks
A = m/(rho2*C2)//m2
