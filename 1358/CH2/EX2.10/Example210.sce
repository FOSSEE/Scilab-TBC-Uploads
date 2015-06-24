// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 2, Example 10")
disp("Given Data N in rpm, H in m, Q - discharge in litres/s:")
N1 = 590
Q1 = 1.83
H1 = 16
N2 = 390
//As H^1/2 / N = constant
H2 = N2^2*H1/(N1^2)
disp("Head developed by the pump at 390 rpm = 6.98 m. In order to find discharge through the pump at 390 rpm, We use Ns = N* Q^(1/2)/(H^3/4) .Therefore Discharge through pump in litres/s Q2 is :")
x = N1*Q1^(1/2)/H1^(3/4);
Q2 = (x*H2^(3/4)/N2)^2
