// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 6, Example 15")
disp("Figure Ex615 shows velocity triangles")
disp("Graphical solutions")
U = 115;//m/s
C1 = 590;//m/s
alpha1 = 18;//degrees;
beta2 = 20;//degrees
disp("The velocity diagrams are drawn to scale, as shown in Fig. Ex615a, and the relative velocity:")
V1 = 482//m/s
k = 0.9;
V2 = k*V1
disp("The absolute velocity at the inlet to the second row of moving blades, C3, is equal to the velocity of steam leaving the fixed row of blades.")
C2 = 316.4;
C3 = k*C2
disp("Driving Force in N")
m = 1;
DeltaCw1 = 854;
DeltaCw2 = 281.46; 
disp("For the first row of moving blades,in N")
F1 = m*DeltaCw1
disp("For the second row of moving blades, in N")
F2 = m*DeltaCw2
disp("where DeltaCw1 and DeltaCw2 are scaled from the velocity diagram.")
disp("Total driving force")
F = F1+F2
disp("Power = driving force *blade velocity in kW per kg/s")
s = 115;
P = F*s/1000
disp("Energy supplied to the wheel")
E = m*C1^2 /(2*1000)
disp("Therefore, the diagram efficiency is:")
etad = P*1000*2/C1^2 *100
disp("Maximum diagram efficiency:")
etadm = (cos(alpha1*%pi/180))^2 *100
Ca1 = 182.32;
Ca2 = 148.4;
Ca3 = 111.3;
Ca4 = 97.57;
disp("Axial thrust on the first row of moving blades (per kg/s): in N")
F1 = m*(Ca1-Ca2)
disp("Axial thrust on the second row of moving blades (per kg/s): in N")
F2 = m*(Ca3-Ca4)
disp("Total axial thrust:in N")
F = F1+F2
