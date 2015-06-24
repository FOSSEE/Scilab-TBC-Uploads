// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 9, Example 6")
//In a laboratory experiment,A current(I)=100A burns out a nickel wire having Diameter(D)=1mm or 0.001mm,length(L)=0.3m
I=100;
D=.001;
L=0.3;
//It is submerged horizontally in water at one atmospheric pressure.
//For saturated water at one atmospheric pressure,density(rhol=960kg/m^3),vapour density(rhov=0.60kg/m^3),enthalpy of vaporisation(hfg=2.26*10^6J/kg),surface tension(sigma=0.055N/m).
rhol=960;
rhov=0.60;
hfg=2.26*10^6;
sigma=0.055;
//Area(A)=[pi*D*L]
A=%pi*D*L;
//g is acceleration due to gravity =9.81m/s^2
g=9.81;
//The wire is burnt out when heat reaches its peak
//We use following expression to determine critical heat flux qc=0.149*hfg*rhov*[(sigma*g*(rhol-rhov))/rhov^2]^(1/4)*[(rhol+rhov)/rhol]^(1/2) 
disp("Critical Heat flux in W/m^2 is")
qc=0.149*hfg*rhov*[(sigma*g*(rhol-rhov))/rhov^2]^(1/4)*[(rhol+rhov)/rhol]^(1/2) 
//From the energy balance E*I=qc*A
//E is the burn out voltage
disp("The burn out voltage in Volts is  ")
E=(qc*A)/I

















