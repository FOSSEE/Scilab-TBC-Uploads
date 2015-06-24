// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 26")
disp("In this case, the generator is fed by two Pelton turbines.")
disp("Power developed by each turbine,")
PT = 35000/2
disp("Using Pelton wheel efficiency in order to find available power of each turbine")
P = PT / 0.84
disp("But, P = rho*gQH")
rho = 1000;
g = 9.81;
H = 350
Q = P/(rho*g*H) * 1000
disp("Velocity of jet,Cj")
Cv = 0.96;
Cj = Cv*(2*g*H)^0.5
disp("Area of jet, A")
A = Q/Cj
disp("Diameter of jet , d")
d = (4*A/%pi)^0.5
disp("Diameter of wheel D = d * jet ratio")
r = 12;
D= d*12
disp("Peripheral velocity of the wheel")
U = 0.45*(2*g*H)^0.5
disp("But U = pi*DN/60 or")
N = 60*U/(%pi*D)
disp("Specific speed,")
Ns = N*PT^0.5 / H^1.25
