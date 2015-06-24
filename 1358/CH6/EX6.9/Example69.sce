// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 6, Example 9")
disp("The blade speed, in m/s")
D = 1.3;
N = 3000;
U = %pi*D*N/60
disp("Velocity of flow,in m/s")
Ca = 0.5*U
C2 = 102;
disp("Draw lines AB and CD parallel to each other Fig. Ex69 at the distance of 102 m/s, i.e., velocity of flow, Ca1 = 102 m/s.")
disp("At any point B, construct an angle alpha2 = 20 degrees to intersect line CD at point C. Thus, the velocity triangle at the outlet is completed. For Parson’s turbine,")
disp("alpha1 = beta2 , beta1 = alpha2 , C1 = V2 and V1 = C2")
disp("By measurement")
Cw1 = 280.26;
Cw2 = 76.23;
DeltaCw = Cw1+Cw2
disp("The inlet angles are 53.22 degrees.Specific volume of vapor at 0.5 MPa, from the steam tables, is in m3/kg")
vg = 0.3749
disp("Therefore the mass flow is given by:")
x2 = 1;
A= %pi*1.3*6;
m = A*C2/(x2*vg)/100
disp("Power developed in kW")
P = m*C2*DeltaCw/1000
