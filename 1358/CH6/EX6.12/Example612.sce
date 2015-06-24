// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 6, Example 12")
disp("For 50% reaction turbine Fig. Ex612, alpha1 = beta2, and alpha2 = beta1. From the velocity triangle ACD, angles in degrees")
disp("All velocities in m/s")
C1 = 105;//m/s
alpha1 = 20;
Cw1 = C1*cos(alpha1*%pi/180)
disp("Applying cosine rule to the Triangle ABC:")
U = 40;//m/s
V1 = (C1^2+U^2-C1*2*U*cos(alpha1*%pi/180))^0.5
BD = Cw1-U//ms/
beta1 = acos(BD/V1)*180/%pi//degrees
disp("Change in the velocity of whirl is:")
Cw2 = BD;
DeltaCw = Cw1+Cw2
disp("Horse Power generated")
m = 2;
P = m*U*DeltaCw/(0.746*1000)
