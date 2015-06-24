// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 9")
disp("Refering Figure")
disp("From inlet velocity triangle")
Cr1 = 3.8;//m/s
alpha1 = 16;//degree
Cw1 = Cr1/tan(alpha1*%pi/180)
disp("Absolute velocity of water at inlet, C1, is")
C1 = Cr1/sin(alpha1*%pi/180)
D1 = 1;//m
N = 240;//rpm
U1 = %pi*D1*N/60
x = Cr1/(Cw1-U1)
beta1 = atan(x) * 180/%pi
disp("Relative velocity of water at entrance")
V1 = Cr1/sin(beta1*%pi/180)
