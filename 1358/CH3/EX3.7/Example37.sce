// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 7")
disp("Refering Figure")
disp("Head = 90m")
disp("Head lost due to friction = 30m")
disp("Head available at the nozzle = 90 - 30 = 60m")
Q = 1//m3/s
disp("From inlet diagram")
Cv = 0.98;
g = 9.81;
H = 60;
C1 = Cv *(2*g*H)^0.5
U1 =12;
disp("Therefore")
V1 = C1-U1
disp("From outlet velocity triangle")
V2 = V1
alpha = 15;
disp("neglecting losses in m/s")
U2 = U1;
Cw2 = V2*cos(alpha*%pi/180)-U2
Cr2 = V2*sin(alpha*%pi/180)
C2 = (Cw2^2+Cr2^2)^0.5
disp("Work done in kJ/kg")
W = (C1^2-C2^2)/2
disp("Note Work done can also be found by using Euler’s equation (Cw1U1 + Cw2U2)")
Power = W //kW
disp("Hydraulic Efficiency")
Efficiency = W*2/C1^2
