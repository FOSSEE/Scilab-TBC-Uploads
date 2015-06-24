clc
//Chapter4
//Ex_13
//Given
phi=2.6 //in eV
e=1.6*10^-19 //in coulombs
phi=phi*e //in Joules
Be=3*10^4 //schottky coefficient in A/m2/K2
T=1600 //in degree celcius
T=T+273 //in Kelvin
k=1.38*10^-23 //m2 kg s-2 K-1
d=2*10^-3 //in m
l=4*10^-2 //in in m
//Richardson-Dushman Equation
J=Be*T^2*exp(-phi/(k*T))
A=%pi*d*l
I=J*A
disp(I,"Saturation current in Amperes if the tube is operated at 1873 kelvin is")
