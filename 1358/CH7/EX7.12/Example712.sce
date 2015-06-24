// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 7, Example 12")
disp("Dimensionless specific speed is")
disp("Ns = 0.336*(C3/C0)^0.5*(A3/Ad)^0.5   in rev")
disp("A3 and Ad are in m2")
D3t = 0.064;//m
D3h = 0.026;//m
A3 = %pi*(D3t^2 - D3h^2)/4
D2 = 0.092;//m
Ad = %pi*D2^2/4
disp("Dimensionless specific speed Ns in rev and Nsa in rad")
Ns = 0.336*(0.447*A3/Ad)^0.5//rev
Nsa = 0.904
disp("The flow rate at outlet for the ideal turbine is given by Q3 in m3/s")
disp("Ns = 0.18*(Q3/(N*D2^3))^0.5")
N = 30500;
Q = (Ns/0.18)^2*N*D2^3/60
disp("The power developed by the turbine is given by in kW")
disp("W = m*U3^2")
disp("  = rho3*Q3*U3^2")
rho3 = 1.75;//kg/m3
Wt = rho3*Q*(%pi*N*D2/60)^2 /1000
