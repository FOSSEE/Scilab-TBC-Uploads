// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 6, Example 8")
disp("From triangle ABC Figure Ex68")
C1 = 460;
a = 22;//degrees
Cw1 = C1 *cos(a*%pi/180)
Ca1 = C1*sin(a*%pi/180)
disp("Now from triangle BCD")
BD = Ca1/tan(33*%pi/180)
disp("Hence, blade speed is given by: in m/s")
U = Cw1-BD
disp("From Triangle BCD, relative velocity at blade inlet is given by: in m/s")
V1 = Ca1/sin(33*%pi/180)
disp("Velocity coefiicient")
k = 0.75
V2 = V1*k
disp("From triangle BEF")
BF = V2*cos(33*%pi/180)
Cw2 = BF-U
AF = Cw2;
Ca2 = V2*sin(33*%pi/180)
disp("The change in velocity of whirl:")
DeltaCw = Cw1+Cw2
disp("Diagram efficiency")
etad = 2*DeltaCw*U/C1^2 * 100
disp("End thrust on the shaft per unit mass flow: in N")
F = Ca1-Ca2
