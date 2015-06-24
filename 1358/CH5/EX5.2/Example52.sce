// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 5, Example 2")
disp("The stage pressure ratio is given by:")
disp("Rs = (1+etas*deltaT0s/T01)^(gamma/(gamma-1))")
Rs = 1.22;
DeltaT0s = 21;
T01 = 288;//Kelvin
etas = (Rs^(1/3.5) - 1)*T01/DeltaT0s *100
disp("The rotor speed is given by:")
U = 200;//m/s
N = 4500;//rpm
D = 60*U/(%pi*N)
