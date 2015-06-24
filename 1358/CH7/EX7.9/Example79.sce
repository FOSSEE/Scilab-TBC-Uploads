// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 7, Example 9")
disp("At 50%.  alpha2 = beta3; alpha3 = beta2")
U = 340;
disp("C2 in m/s")
C2 = U/cos(15*%pi/180)
disp("Heat drop in blade moving row in Hdrop K")
C3 = 105;//m/s
Cp = 1147;
Hdrop = (C2^2 - C3^2)/(2*Cp)
disp("Therefore heat drop in a stage")
Hdropstage = Hdrop *2
disp("Number of stages n = ")
n = (1173-943)/Hdropstage
disp("Therefore No. of stages = 2")
