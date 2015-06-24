// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 7, Example 2")
disp("The specific work output in kJ/kg")
etats = 0.85;
Cpg = 1.147;
T01 = 800 + 273;
gam = 1.33;
W = etats*Cpg*T01*(1-(1/4)^((gam-1)/gam))
disp("Since alpha1 = 0, alpha3 = 0, Cw1 = 0 and specific work output is given by")
U = 480;
Cw2 = W*1000/U//m/s
disp("From velocity triangle")
alpha2 = 68;
C2 = Cw2/sin(alpha2*%pi/180)//m/s
disp("Axial velocity is given by in m/s")
Ca2 = C2*cos(alpha2*%pi/180)//m/s
disp("Total-to-total efficiency, etatt, is")
disp("etatt = (T01-T03)/(T01-T03a)")
disp("      = W/(T01-(T3+C3^2 /(2Cpg)))")
disp("      = W/((W/etats) - (C3^2 /(2Cpg)))")
C3 = Ca2;//m/s
etatt = W/((W/etats) - (C3^2 / (2*Cpg*1000))) *100//in %
disp("The degree of reaction DOR")
disp("DOR = Ca*(tan(beta3) - tan(beta2))/(2U)")
DOR = (1- Ca2*tan(alpha2*%pi/180) / (2*U))*100//%
