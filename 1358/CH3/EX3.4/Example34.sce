// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 4")
disp("Given Data")
H = 505//Head in m
P = 12900//Power in kW
N = 425//Speed in rpm
etao = 0.84//Efficiency
g = 9.81//m/s2
disp("Let Q be the discharge of the turbine")
Q = P/(etao*g*H)
disp("Velocity of jet C")
Cv = 0.98;
C = Cv * (2*g*H)^0.5
disp("Tangential velocity of the wheel is given by ")
U = 0.46*C
disp("Diameter D")
D = 60*U/(%pi*N)
disp("Let d be the diameter of the nozzle. The discharge through the nozzle must be equal to the discharge of the turbine. Therefore")
d = (Q*4/(%pi*C))^0.5
