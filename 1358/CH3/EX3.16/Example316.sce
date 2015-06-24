// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 16")
disp("If D1 is the diameter of pipe, then discharge is Q = pi*D1^2*C2/4")
Q = 0.245
D1 = 0.28
C2 = 4*0.245/(%pi*0.28^2)
disp("But C2 = Cr1 = Cr2")
g =9.81;
H = 30;
disp("Neglecting losses, we have")
//x = Cw1*U1
x = g*H - C2^2 /2;
disp("Power developed")
Power = x*Q//kW
U1 = 16
Cw1 = x/U1
Cr1 = C2
alpha1 = atan(C2/Cw1)*180/%pi
beta1 = atan(Cr1/(Cw1-U1)) *180/%pi

