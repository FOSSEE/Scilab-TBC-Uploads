// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 5, Example 13")
disp("No. of stages = 10")
disp("The overall stagnation temperature rise is:")
T01 = 290;
R = 4.5;
etac = 0.88;
T1 = (290*(4.5^0.286 - 1))
disp("The stagnation temperature rise of a stage")
T0s = T1/10
disp("The stagnation temperature rise in terms of air angles is:")
disp("T0s = TauUCa(tanalpha2 - tanalpha1)/Cp")
disp("(tanalpha2 - tanalpha1) = T0s * Cp/(TauUCa)")
disp("(tanalpha2 - tanalpha1)= Dif ------(A)")
Tau = 0.87;
Cp = 1005;
U = 218;
Ca = 165;
Dif = T0s*Cp/(Tau*U*Ca)
disp("From degree of reaction DOF")
disp("DOF = (1 - Ca*(tanalpha2 + tanalpha1)/2U)")
disp("0.76 = (1 - 165(tanalpha2 + tanalpha1)/(2*218))")
disp("(tanalpha2 + tanalpha1) = Add ------(B)")
Add = (1-0.76)*(2*U)/Ca
disp("Adding (A) and (B), we get")
alpha2 = atan((Add+Dif)/2)*180/%pi
alpha1 = atan((Add-Dif)/2)*180/%pi
disp("Similarly, for beta1 and beta2, degree of reaction")
disp("Add1 = tanbeta1 + tanbeta2 = 2.01")
Add1 = 2.01;
disp("and Dif1 = tanbeta1 - tanbeta2 = 0.501")
Dif1 = 0.501;
beta1 = atan((Add1+Dif1)/2)*180/%pi
beta2 = atan((Add1-Dif1)/2)*180/%pi
