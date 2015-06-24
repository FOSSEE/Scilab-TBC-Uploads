clear;
clc;
close;
disp("Example 3.4")
m0=100 //air flow rate in kg/s
V0=0 //takeoff assumptions in m/s
mf=2 //2% of fuel-to-air ratio
Qr=43000 //Heating value of typical hydrocarbon fuel in kJ/kg
V9=900 //high speed exhaust jet (in m/s)
e=((m0+mf)*(V9)^2)/(2*(mf)*(Qr)*1000)
m9=m0+mf
t=m9*V9 // the engine thrust at takeoff.
disp(t,"The engine thrust at takeoff in SI units(N):")