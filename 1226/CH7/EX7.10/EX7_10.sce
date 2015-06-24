clc;funcprot(0)//EXAMPLE 7.10

//Initializing the variables
n=1;.....//No of cylinders
D=0.32;.....//Bore of the cylinder in m
L=0.38;......//Stroke of the cylinder in m
N = 280;....//Engine rpm
CV = 18600;....//calorific value of fues in kJ/m^3
Tk1 = 300;....//Initial temperature in Kelvin
p1 = 1.013;.....//Initial pressure in bar
ma = 3.36;.......//mass of air consumed per min
tgc = 0.25;......//test gas consumption in m^3/min
pw = 120;.........//pressure of water in mm during the test gas consumption
tgct = 300;.......//Temperature in Kelvin during test gas consumption
rhow = 1000;.....//density of water in kg/m^3
R=287;...........//Gas constant in J/kg.K
//calculations
V= (ma*R*Tk1)/(p1*(10^5));...//Volume of air consumed at inlet condition

gsp = p1 +(pw/rhow)/10.2;...................//Gas supply pressure
//1 bar = 10.2 m
gcic = tgc*(gsp/p1);..........//Gas consumption at inlet condition
Vi = gcic+V;.....//Volume of mixture at inlet condition
Vswt = (%pi/4)*(D^2)*L*(N/2);......//Swept volume 
etaV = Vi/Vswt;.....//Volumetric efficiency
disp(etaV*100,"The volumetric efficiency of the engine is (%):")
hv = (gcic/Vi)*CV;......//Heating value
disp(hv,"The heating value of 1 m^3 of charge at 25 degree Celsius in kJ.m^3")
