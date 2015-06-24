// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 6, Example 13")
disp("Figure Ex613 shows the velocity triangles.")
alpha1 = 18;
beta2 = alpha1;
alpha2 = 25;
beta1 = alpha2;
disp("From the velocity triangle, velocities in m/s")
C1 = 90;//m/s
Cw1 = C1*cos(alpha1*%pi/180)//m/s
Ca1 = C1*sin(alpha1*%pi/180)
CD = Ca1;
disp("From triangle BDC")
BD = Ca1/sin(beta1*%pi/180)
disp("Hence blade velocity is given by:")
U = Cw1-BD
disp("Applying the cosine rule,")
V1 = (C1^2+U^2-2*U*C1*cos(alpha1*%pi/180))^0.5
disp("From triangle AEF")
C2 = V1;
Cw2 = C2*cos(alpha2*%pi/180)
disp("Change in the velocity of whirl: m/s")
DeltaCw = Cw1+Cw2
disp("Power developed by the rotor: in kW")
m = 10;
P = m*U*DeltaCw/1000
disp("From superheated steam tables at 5 bar, 250 degree Celcius, the specific volume of steam is: in m3/kg")
v = 0.4744
disp("Blade height is given by the volume of flow equation: in m")
disp("v = pi*D*h*Ca")
disp("where Ca is the velocity of flow and h is the blade height.Therefore,")
D=0.72;
Ca = Ca1;
h = v/(%pi*Ca*D)
