clc
clear

//Input data 
dP=490*(1.01325/760) //Pressure in pivot tube in bar
P=0.3546+1.01325 //Static pressure(absolute) in bar 
To=25+273 //Stagnation temperature in K
k=1.4 //Adiabaatic constant
R=287 //Specific gas constant in J/kg-k
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K

//Calculation
Po=dP+P //Stagnation pressure in bar
T=To*(P/Po)^((k-1)/k) //Static temperature
C1=sqrt(2*Cp*(To-T)) //Flow velocity for Compressible flow in m/s
di=Po/(R*To) //Density in kg/m^3
C2=sqrt((2*dP)/di) //Flow velocity for incompressible flow in m/s

//Output
printf('Flow velocity for:\n (A)Compressible flow is %3.2f m/s\n (B)Incompressible flow is %3.2f m/s',C1,C2)
