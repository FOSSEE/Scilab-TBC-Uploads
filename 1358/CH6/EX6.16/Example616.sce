// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 6, Example 16")
disp("Figure Ex616 shows velocity triangles")
disp("The velocity triangles can easily be constructed as the blade velocity and blade angles are given.From velocity triangles, work output per kg is given by:")
U = 300;//m/s
alpha1 = 25;
beta1 = 60;
alpha2 = 71.1;
beta2 = 32;
disp("Wt = U*(Cw1+Cw2)")
Wt = U*(450*cos(alpha1*%pi/180)+247*cos(alpha2*%pi/180))
disp("Power output i kW")
m = 5;
P = m*Wt/1000
disp("Degree of reaction is given by: DOR")
V1 = 220;//m/s
V2 = 443;//m/s
DOR = (V2^2 -V1^2)/ (2*Wt) * 100
disp("Axial thrust: in N")
Ca1 = 190.5;//m/s
Ca2 = 234;//m/s
F = m*(Ca1-Ca2)
disp("The thrust is negative because its direction is the opposite to the fluid flow.")
