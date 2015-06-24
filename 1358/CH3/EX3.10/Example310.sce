// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 10")
disp("Refering Figures")
disp("Since this is an impulse turbine, assume coefficient of velocity = 0.98")
disp("Therefore the absolute velocity at inlet is")
Cv = 0.98;
g = 9.81;
H = 35;
C1 = Cv*(2*g*H)^0.5
disp("The velocity of whirl at inlet")
alpha1 = 30;
Cw1 = C1*cos(alpha1*%pi/180)
disp("Since U1 = U2 = U")
disp("Using outlet velocity triangle")
disp("C2 = U2tan(beta2) = U tan(beta2) = U tan(22)")
disp("Hydraulic efficiency of turbine (neglecting losses)")
//etah = Cw1U1/gH = (H - C2^2/2g)/H
//22.24U + 0.082U^2 - 9.81H = 0
disp("As U is positive,")
U = (-22.24 + ((22.4)^2 + 4*0.082*g*H)^0.5)/(2*0.082) - 0.9
disp("Now using relation")
disp("U = %pi*D*N/60")
D = 1.5;
N = 60*U/(%pi*D)
disp("Hydraulic efficiency")
etah = Cw1*U/(g*H)
