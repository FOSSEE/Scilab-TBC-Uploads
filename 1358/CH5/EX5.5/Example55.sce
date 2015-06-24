// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 5, Example 5")
disp("DOF -> Degree of Freedom")
disp("Reaction at the blade root:")
Ca = 140;
beta1r = 30.08;
beta2r = -18;
Ur = 140;
DOFroot =Ca*(tan(beta1r*%pi/180)+tan(beta2r*%pi/180))/(2*Ur) *100
disp("Reaction at the blade tip:")
Ut = 240;
beta1t= 55.75;
beta2t = 43.26;
DOFtip =Ca*(tan(beta1t*%pi/180)+tan(beta2t*%pi/180))/(2*Ut)*100
