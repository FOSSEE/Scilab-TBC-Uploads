// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 5, Example 9")
disp("For 50% degree of reaction at the mean radius (Fig. Ex59), alpha1 = beta2 and alpha2 = beta1.")
disp("From the inlet velocity triangle,")
Ca = 180;
C1 = 185;
Cp = 1005;
alpha1 = acos(Ca/C1)*180/%pi
beta2 = alpha1
disp("From the same velocity triangle,")
Cw1 = (C1^2 - Ca^2)^0.5
U = 200;
beta1 = atan((U-Cw1)/Ca)*180/%pi
alpha2 = beta1
disp("Static temperature at stage inlet may be determined by using stagnation and static temperature relationship as given below: in Kelvin")
T01 = 290;
T1 = T01 - C1^2/(2*Cp)
disp("Stagnation temperature rise of the stage is given by")
lambda = 0.86;
DeltaT0s = lambda*U*Ca*(tan(beta1*%pi/180)-tan(beta2*%pi/180))/Cp
disp("Stage pressure ratio is given by")
etas = 0.86;
Rs = (1+ etas*DeltaT0s/T01)^3.5

