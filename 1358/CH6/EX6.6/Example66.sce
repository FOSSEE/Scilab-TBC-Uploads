// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 6, Example 6")
disp("From the data given, the velocity diagram can be constructed as shown in Fig. Ex66. The problem can be solved either graphically or by calculation.")
disp("Applying the cosine rule to the triangle ABC, V1 and V2 in m/s implies")
U = 250;
C1 = 925;
alpha1 = 20;
V1 = (U^2 + C1^2 -2*U*C1*cos(alpha1*%pi/180))^0.5
k = 0.7;
V2 = k*V1
disp("Velocity of whirl at inlet:")
Cw1 = C1*cos(alpha1*%pi/180)
disp("Axial component at inlet:")
Ca1 = C1*sin(alpha1*%pi/180)
disp("Blade angle at inlet")
beta1 = atan(Ca1/(Cw1-U))*180/%pi
disp("beta2 = beta1 = outlet blade angle")
beta2 = beta1
Cw2 = cos(beta2*%pi/180)*V2 - U
disp("Ca2 = FE")
Ca2 = (U+Cw2)*tan(beta2*%pi/180)
disp("Velocity of whirl at inlet, Cw1 = 869.22 m/s;")
disp("Velocity of whirl at outlet, Cw2 = 183.69 m/s")
disp("Tangential force on blades in N")
m = 0.182;//kg/s
Ft = (Cw1+Cw2)*m
disp("Axial force on blades in N")
Fa = m*(Ca1-Ca2)
disp("Work done on blades in kW")
disp("= tangential force on blades * blade velocity")
W = Ft*250/1000
disp("Efficiency of blading = Work done on blades/Kinetic energy supplied")
etab = W/(m*C1^2) * 1000 *2 * 100
disp("Inlet angle of blades beta1 = 27.068 = beta2.")
