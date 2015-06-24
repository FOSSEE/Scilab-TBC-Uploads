// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 12 Example 12")
T1=(-150+273);//temperature of air inside in K
T2=(35+273);//temperature of outer surface in K
epsilon1=0.03;//emissivity
epsilon2=epsilon1;
D1=25*10^-2;//diameter of inner sphere in m
D2=30*10^-2;//diameter of outer sphere in m
sigma=2.04*10^-4;//stephen boltzmann constant in KJ/m^2 hr K^4
disp("heat transfer through concentric sphere,Q in KJ/hr ")
disp("Q=(A1*sigma*(T1^4-T2^4))/((1/epsilon1)+((A1/A2)*((1/epsilon2)-1)))")
A1=4*%pi*D1^2/4;
A2=4*%pi*D2^2/4;
Q=(A1*sigma*(T1^4-T2^4))/((1/epsilon1)+((A1/A2)*((1/epsilon2)-1)))
disp("so heat exchange=6297.1 KJ/hr")
