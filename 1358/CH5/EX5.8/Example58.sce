// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 5, Example 8")
disp("Since the degree of reaction at the mean radius is 50%, alpha1 = beta2 and alpha2 = beta1. From the velocity triangles, the relative outlet velocity component in the x-direction is given by:")
Ca = 158;
beta2 = 30;
Vx2 = Ca*tan(beta2*%pi/180)
disp("V1 = C2 = (U - Vx2)^2 + Ca^2)^1/2")
U = 245;
Vx2 = 91.22;
Ca = 158;
C2 = ((U - Vx2)^2 + Ca^2)^0.5
V1 = C2
beta1 = acos(Ca/V1)*180/%pi
disp("Stagnation temperature rise in the stage, in Kelvin")
disp("DeltaT0s = UCa(tanbeta1 - tanbeta2)/Cp")
Cp = 1005;
DeltaT0s = U*Ca*(tan(beta1*%pi/180) - tan(beta2*%pi/180))/Cp
disp("n /(n-1) = inf * gamma/(gamm-1 = 3.05)")
disp("Number of stages")
N = (4.5^(1/3.05) -1)*290/DeltaT0s
disp("implies N = 12 stages")
