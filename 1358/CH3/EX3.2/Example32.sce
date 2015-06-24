// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 2")
disp("Overall efficiency etao = Power developed/Power available")
rho = 1000;
g = 9.81;
Q = 0.035;
H = 92;
etao = 0.82;
Cv = 0.95;
N = 725;
disp("Power in kw")
P = rho*g*Q*H*etao/1000
disp("Velocity coefficient Cv = C1/(2gH)^0.5")
C1 = Cv * (2*g*H)^0.5
disp("Speed of the wheel is given by U")
U = 0.45*C1
disp("If D is the wheel diameter, then")
D = 2*U*60/(N*2*%pi)
disp("Jet area A")
A = Q/C1
disp("Jet diameter, d, is given by")
d = (4*A/%pi)^0.5
disp("Diameter ratio D/d =")
R = D/d
disp("Dimensionless specific speed is given by Nsp = NP^0.5/rho^0.5*(gH)^1.25  in radians")
Nsp = (N/60)*(((P/rho)*1000)^0.5) * ((1/(g*H))^1.25) *2*%pi
