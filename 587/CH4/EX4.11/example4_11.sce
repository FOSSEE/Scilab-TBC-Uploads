clear;
clc;

//Example4.11[Refrigerating Steaks while Avoiding Frostbite]
//Given:-
Ti=25;//Initial temperature of steaks[degree Celcius]
Tf=-15;//Temperature of refrigerator[degree Celcius]
L=0.015;//Thickness of steaks[m]
//Properties of steaks
k=0.45;//[W/m.degree Celcius]
rho=1200;//density[kg/m^3]
a=9.03*(10^(-8));//Thermal diffusivity[m^2/s]
Cp=4.10;//Specific Heat [kJ/kg]
T_L=2,T_0=8;//[degree Celcius]
//Solution:-
//In the limiting case the surface temperature at x=L from the centre will be 2 degree C,while midplane temperature is 8 degree C in an environment at -15 degree C we have
x=L;
p=(T_L-Tf)/(T_0-Tf);
//For this value of p we have
Bi=1/1.5;//Biot number
h=(Bi*k)/L;//[W/m^2.degree Celcius]
disp("W/m^2.degree Celcius",h,"The convection heat transfer coefficient should be kept below the value")
disp("to satisfy the constraints on the temperature of the steak during refrigeration")