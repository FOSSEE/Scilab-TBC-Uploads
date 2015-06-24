// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 9, Example 8")
//A Copper bar whose one end is exposed to boiling water while the other end is encapsulated by an electric heater.
//Thermocouples are inserted in the bar to measure the tempratures at two locations A and b at distances xA=10mm and xB=30mm from the surface.
xA=.010;
xB=.030;
//Under steady condition nucleate boiling is maintained in saturated water at atmospheric pressure and the tempratures are TA=140°C and TB=180°C,n=1
TA=140;
TB=180;
n=1;
//The values of relevant properties of water and other parameters are 
//density of liquid(rhol=960kg/m^3),vapour density(rhov=0.60kg/m^3),specific heat of liquid(cpl=4.216 kJ/(kg*K))
//enthalpy of vaporisation(hfg=2.26*106J/kg),prandtl number of liquiid(Prl=1.74),viscosity of liquid(mul=2.82*10^-4kg/(m*s)),surface tension(sigma1=0.055N/m).
rhol=960;
rhov=0.60;
cpl=4.216*10^3;
hfg=2.26*10^6;
Prl=1.74;
mul=2.82*10^-4;
sigma1=0.055;
//We have to know the value of heat flux(q) and the surface temprature(Tw).
//Since we know the tempratures at location A and B,The heat flux q is determined by fourier law of heat conduction in the bar at steady-state as
//q=k*[(TB-TA)/(xB-xA)]
//We take for copper conductivity,k=375W/(m*K)
k=375;
disp("The heat flux in W/m^2 is")
q=k*[(TB-TA)/(xB-xA)]
//g is acceleration due to gravity =9.81m/s^2
g=9.81;
//The surface temprature is given by Tw=TA-[(TB-TA)/(xB-xA)]*xA
disp("The surface temprature in °C is")
Tw=TA-[(TB-TA)/(xB-xA)]*xA
//Temprature,T=100°C,since copper bar is exposed to boiling water. 
T=100;
//Now we use following equation to determine csf,q=(mul*hfg)*[((rhol-rhov)*g)/sigma1]^(1/2)*[(cpl*(Tw-T))/(csf*hfg*Prl^n)]^3 
//Manipulating above equation to find csf we get csf=[(cpl*(Tw-T))/([[q/{(mul*hfg)*[((rhol-rhov)*g)/sigma1]^(1/2)}]^(1/3)]*hfg*Prl^n)]
disp("The value of the coefficient csf is ")
csf=[(cpl*(Tw-T))/([[q/{(mul*hfg)*[((rhol-rhov)*g)/sigma1]^(1/2)}]^(1/3)]*hfg*Prl^n)]//[NOTE:The answer in the book is incorrect.(Calcultion mistake)]























