// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 4, Example 6")
disp("The pressure ratio is given by r = P03/P01")
etac = 0.88;
sigma = 0.95;
U2 = 457;
Cp = 1005;
T01 = 288;
r = (1+etac*sigma*U2^2/(Cp*T01) )^3.5
disp("The work per kg of air")
Cw2 = 0.95*U2;
W = U2*Cw2 / 1000//kJ/kg
disp("The power for 29kg/s of air")
m = 29;
P = W * m  //kW
