// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 4, Example 5")
disp("Impeller tip speed is given by")
D = 0.914;
N = 9000;
U2 = %pi*D*N/60
disp("Since the exit is radial and no slip, Cw2 = U2 = 431 m/s")
disp("From the velocity triangle,")
alpha2 = 20;
Cw2 = U2;
Cr2 = U2*tan(alpha2 *%pi/180)
disp("For radial exit, relative velocity is exactly perpendicular to rotational velocity U2. Thus the angle beta2 is 90degrees for radial exit.")
disp("Using the velocity triangle")
C2 = (U2^2 + Cr2^2)^0.5
