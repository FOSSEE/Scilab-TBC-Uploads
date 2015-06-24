clc
clear

//Input data
C=250 //Velocity of air in m/s 
D=10 //Diameter in duct in cm
T=5+273 //Static temperature in K
P=40 //Static pressure in kPa
k=1.4 //Adiabatic constant
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K
R=287 //Specific gas constant in J/kg-k

//Calculation
To=T+(C^2/(2*Cp)) //Stagnation temperature in K
Po=P*(To/T)^(k/(k-1)) //Stagnation pressure in kPa
d=(P*10^3)/(R*T) //Density in kg/m^3
A=(%pi*D^2/4)*10^-4 //Area in m^2
m=d*A*C //Mass flow rate in kg/s

//Output
printf('(A)Stagnation pressure is %3.2f kPa\n (B)Stagnation temperature is %3.2f K\n (C)Mass flow rate is %3.4f kg/s',Po,To,m)
