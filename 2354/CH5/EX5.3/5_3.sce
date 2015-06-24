//example 5.3
clc; funcprot(0);
// Initialization of Variable
h1=3213.6;//kJ/kg
V1=10.0;
V2=665.0;
mdot=2.0;
h2=h1+(V1^2/2-V2^2/2)/1000;
//using table with given h2 values
v2=0.1627;//specific volume
V2=665;
A2=mdot*v2/V2;
disp(A2,"Area in m^2");
clear()
