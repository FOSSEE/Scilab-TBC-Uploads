// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 8, Example 4")
//A square plate length,L=0.2m by breadth,B=0.2m is suspended vertically in a quiescent atmospheric air at a temprature(Tinf)=300K
L=0.2;
B=0.2;
Tinf=300;
//The Temprature of plate(Tw) is maintained at 400K
Tw=400;
//The required property value of air at a film temprature(Tf)=350K,kinematic viscosity (nu=20.75*10^-6),Prandtl number(Pr=0.69),conductivity(k=0.03W/(m*K))
Tf=350;
nu=20.75*10^-6;
Pr=0.69;
k=0.03;
//volume expansion coefficient is Beta
Beta=(1/Tf);
//g is acceleration due to gravity =9.81m/s^2
g=9.81;
//Grashoff number is given by GrL=(g*beta*(Tw-Tinf)*L^3)/(nu)^2
disp("Grashoff number is")
GrL=(g*Beta*(Tw-Tinf)*L^3)/(nu)^2 
//Rayleigh number is defined as RaL=GrL*Pr
disp("Rayleigh number is")
RaL=GrL*Pr
disp("Hence,the flow is laminar")
//delta is the thickness of the boundary layer
disp("The thickness of the boundary layer in metre is")
x=0.2;//location of trailing edge of plate
delta=[x*3.93*(0.952+Pr)^(1/4)]/[Pr^(1/2)*(GrL)^(1/4)]//NOTE:The answer in the book is incorrect(calculation mistake)
//hL and hbarL are local and average heat transfer coefficient respectively
disp("The average heat transfer coeficient in W/(m^2*K) is")
hL=(2*k)/delta;
hbarL=(4/3)*(hL)//NOTE:The answer in the book is incorrect(calculation mistake)

























