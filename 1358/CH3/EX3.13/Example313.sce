// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 13")
disp("Outer diameter, D2 = 1.4m")
disp("Inner diameter, D1 = 0.7m")
disp("Angle at which the water enters the vanes, alpha1 = 12 degrees")
disp("Velocity of flow at inlet,")
Cr2 = 2.8
Cr1 = Cr2
disp("As the vanes are radial at inlet and outlet end, the velocity of whirl at inlet and outlet will be zero, as shown in Fig. 3.21.")
disp("Tangential velocity of wheel at inlet,")
alpha1 = 12
U1 = Cr1/tan(alpha1*%pi/180)
D2 = 1.4
N = 60*U1/(%pi*D2)
disp("Let beta2 is the vane angle at outlet")
D1 = 0.7
U2 = %pi*D1*N/60
disp("From Outlet triangle,")
beta2 = atan(Cr2/U2)*180/%pi
