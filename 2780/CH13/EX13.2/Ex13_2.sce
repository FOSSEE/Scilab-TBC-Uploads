clc
//to calculate temperature
Tc=7.18 //critical temperature in K
Bc=4.5*10^3  //critical field in A/m
Bo=6.5*10^3 //critical magnetic field in A/m
T=Tc*sqrt(1-(Bc/Bo))
disp("temperature is T="+string(T)+"K")
//to calculate critical current density at that temperature
r=1*10^-3 //diameter of the wire in mm
TJc=(Bc*2*%pi*r)/(%pi*r^2)
disp("the critical current density at that temperature is TJc="+string(TJc)+"A/m^2")
