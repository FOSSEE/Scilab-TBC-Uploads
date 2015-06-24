// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 15")
disp("Inner diameter of wheel,")
D1 = 1
disp("Outer diameter of wheel,")
D2 = 2
disp("Velocity of flow is constant")
Cr1 = 12//m/s
Cr2 =Cr1
disp("Speed of wheel,")
N = 290//rpm
disp("Vane angle at inlet = beta1")
disp("U1 is the velocity of periphery at inlet.")
U1 = %pi*D1*N/60
disp("From inlet triangle, velocity of whirl is given by")
Cw1 = Cr1/tan(20*%pi/180)
beta1 = atan(Cr1/(Cw1-U1))*180/%pi
disp("Let beta2 = vane angle at outlet")
disp("U2 = velocity of periphery at outlet")
U2 = %pi*D2*N/60
disp("From the outlet triangle")
beta2 = atan(Cr2/U2)*180/%pi
