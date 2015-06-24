// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 2, Example 8")
//D2 is siameter in meter, N is rpm, Cr2 in m/s and Cw2=U2 in m/s , V velocity of flow in m/s
D2 = 0.6;
N = 550;
Cr2 = 3.5;
U2 = %pi*D2*N/60
Cw2 = U2
g = 9.81;
V=2.5;
disp("Head in meters from where water is being lifted is :")
H = Cw2 * U2/ g - (V^2)/(2*g)
//b2 is width
//Qis discharge Q=piD2b2Cr2 in m3/s
b2 = 0.082;
disp("Discharge Q is in m3/s:")
Q = %pi * D2 * b2 * Cr2
disp("Power P in Kilowatts is given as :")
rho = 1000; //density of water 1000kg/m3
P = rho*g*Q*H/1000
