// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 6, Example 11")
disp("Velocity triangles for this problem are shown in Fig.Ex611")
disp("From the triangle ACD,")
C1 = 700;
alpha1 = 22;
Ca1 = C1*sin(alpha1*%pi/180)//in m/s
beta1 = 34;
V1 = Ca1/sin(beta1*%pi/180)//in m/s
disp("Whirl component of C1 is given by in m/s")
Cw1 = C1*cos(alpha1*%pi/180)
disp("BD = Cw1 - U = V1cosbeta1")
BD = V1*cos(beta1*%pi/180)
disp("Hence, blade speed in m/s")
U = Cw1-BD
disp("Using the velocity coefficient to find V2:")
k = .9;
V2 = k*V1
disp("From velocity triangle BEF,")
beta2 = beta1;
Ca2 = V2*sin(beta2*%pi/180)
Cw2 = V2*cos(beta2*%pi/180) - U
DeltaCw = Cw1+Cw2
disp("mass flow rate is given by m. in kg/s")
P = 1600;
m = P*1000/(DeltaCw*U)
disp("Thrust on the shaft in N")
Ft = m*(Ca1-Ca2)
disp("Diagram efficiency")
etad = 2*U*DeltaCw/C1^2 * 100
