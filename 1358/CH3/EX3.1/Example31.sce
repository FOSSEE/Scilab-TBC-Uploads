// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 1")
disp("Given data : Discharge rate Q = 145 l/s, Head H = 220m, U1 = U2 = 14m/s, beta2 = 180-160 =20degrees")
Q = 145;
H = 220;
U2 = 14;
U1 = U2;
beta2 = 20;
g = 9.81;
disp("Refering figure")
disp("Using Using Euler’s equation, work done per weight mass of water per sec.= (Cw1U1 - Cw2U2). But for Pelton wheel Cw2 is negative")
disp("Therefore Work done / s = (Cw1U1 + Cw2U2) Nm / s. From inlet velocity triangle Cw1 = C1 and C1^2/2g = H")
C1 = (2*g*H)^0.5
disp("Relative velocity at inlet V1")
V1 = C1-U1
disp("From outlet velocity triangle")
V2 = V1
Cw2 = cos(20*%pi/180)*V2 -14
disp("Hence, work done per unit mass of water per sec.")
W = C1*U1+Cw2*U2
disp("Power in kw")
P = W*Q/1000
