// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 6, Example 7")
//A flat plate B=1.2m wide and of length L is kept parallel to a uniform stream of air of velocity Uinf=3m/s in a wind tunnel.
Uinf=3;
B=1.2;
//If it is desired to have a laminar boundary layer only on the plate 
//Assume that the laminar flow exists up to a reynold number(ReL)=5*10^5.Take density of air as rhoair=1.2kg/m^3 and viscosity of air as nuair=1.5*10^-5 m^2/s.
nuair=1.5*10^-5;
rhoair=1.2;
ReL=5*10^5;
//For maximum length of the plate reynolds number is ReL=Uinf*L/nuair
//so L=ReL*nuair/Uinf
disp("The maximum length of plate in m is ")
L=ReL*nuair/Uinf
//The average skin friction coefficient is cfL=1.328/(ReL)^(1/2)
disp("The average skin friction coefficient is")
cfL=1.328/(ReL)^(1/2)
//Fd is drag force
disp("Drag force on one side of plate in N is")
Fd=cfL*(rhoair*Uinf^2/2)*B*L




















