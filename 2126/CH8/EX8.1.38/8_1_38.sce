clc
clear

//Input data
P=1 //Pressure in bar
T=400 //Temperature in K
C=400 //Air velocity in m/s
k=1.4 //Adiabatic constant 
R=287 //Specific gas constant in J/kg-K
Cp=1005 //Specific heat capacity at constnat pressure in J/kg-K

//Calculation
To=T+(C^2/(2*Cp)) //Stagnation Temperature in K
Poi=P+((P*C^2)/(R*T*2)) //Stagnation Pressure (if it is incompressible) in bar
Poc=P*(To/T)^(k/(k-1)) //Stagnation Pressure (if it is compressible) in bar

//Output
printf('(Stagnation Temperature is %3.1f K\n (C)Stagnation Pressure:\n    If it is incompressible is %3.4f bar\n    If it is compressible is %3.4f bar',To,Poi,Poc)
