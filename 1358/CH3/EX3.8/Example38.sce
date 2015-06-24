// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 8")
//Answers here are given by direct calculations and none of them are rounded, the answers are dependent on each other.
disp("Refering Figure and the scientific calculations")
disp("Velocity of jet, C1")
Cv = 0.98;
g=9.81;
H = 515;
C1 = Cv*(2*g*H)^0.5
disp("Discharge, Q is given by")
d=0.2;
Q = %pi*C1*d^2 /4
disp("Water power is given by in kW")
rho = 1000;
P = rho*g*Q*H/1000
disp("Bucket velocity, U1, is given by")
Cv1 = 0.46;
U1 = Cv1*(2*g*H)^0.5
disp("Relative velocity, V1, at inlet is given by")
V1 = C1-U1
V2 = 0.88*V1
disp("From the velocity diagram")
U2 = U1
Cw2 = U2 -V2*cos(%pi*15/180)
disp("Therefore force on the bucket F in N")
Cw1 = C1
F = rho*Q*(Cw1-Cw2)
disp("Power produced by the Pelton wheel Pp in kW")
Pp = F*U2/1000
disp("Taking mechanical loss")
loss = 0.04
disp("Therefore, shaft power produced")
Pshaft = Pp*(1-loss)
disp("Overall efficiency etao")
etao = Pshaft/P *100
