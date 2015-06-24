// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 7, Example 3")
disp("From Figure Ex73")
Ca = 250 //m/s
Ca3 = Ca;//m/s
Ca2 = Ca3;//m/s
Ca1 = Ca2;//m/s
U = 350;//m/s
disp("From velocity triangle (b)")
alpha2 = 63;
C2 = Ca2/cos(alpha2*%pi/180)//m/s
disp("From Figure (c)")
alpha3 = 9;
C3 = Ca3/cos(alpha3*%pi/180)//m/s
Cw3 = Ca3*tan(alpha3*%pi/180)//m/s
beta3 = atan((U+Cw3)/Ca3)*180/%pi
disp("From Figure(b)")
Cw2 = Ca2*tan(alpha2*%pi/180)//m/s
beta2 = atan((Cw2-U)/Ca2)*180/%pi
disp("Power output in kW")
m = 15;
W = m*U*Ca*(tan(beta2*%pi/180) + tan(beta3*%pi/180))/1000
disp("The degree of reaction is given by")
DOR = Ca*(tan(beta3*%pi/180) - tan(beta2*%pi/180))/(2*U) *100
