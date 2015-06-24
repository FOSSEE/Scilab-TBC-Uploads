// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 25")
P = 5000//kW
alpha1 = 30//degrees
H= 30//m
g = 9.81;
Ns = 270
etah = 0.9
etao = 0.86
disp("Specific speed of the turbine is")
N = Ns* H^1.25 / (P^0.5)
disp("Velocity of Flow:")
Cr1 = 0.28* (2*g*H)^0.5
disp("From inlet velocity triangle Cr1 = C1sin(alpha1)")
C1 = Cr1 / sin(alpha1*%pi/180)
Cw1 = C1 * cos(alpha1*%pi/180)
disp("Work done per (sec) (kg) of water")
//W = Cw1*U1/g
W = etah*H
disp("Peripheral Velocity,")
U1 = W*g/Cw1
disp("But U1 = pi*D1N/60")
D1 = 60*U1/(%pi*N) 
disp("Power, P = rho*gQH*etao")
rho = 1000;
Q = P/(rho*g*H*etao) * 1000
disp("Also Q = k*pi*D1b1Cr1 (where k is the blade thickness coefficient and b1 is the breath of the wheel at inlet) or")
k = 0.95
b1 = Q/(k*%pi*D1*Cr1)
disp("From inlet velocity triangle")
beta1 = atan(Cr1/(U1-Cw1)) * 180/%pi
