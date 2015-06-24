clc
clear

//Input data
C=800*(5/18) //Velocity in m/s
Po=105 //Stagnation pressure in kPa
To=35+273 //Stagnation temperature in K
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K
k=1.4 //Adiabatic Constant
R=287 //Specific gas constant in J/kg-k

//Calculation
T=To-(C^2/(2*Cp)) //Static temperature in K
P=Po*(T/To)^(k/(k-1)) //Static pressure in kPa
a=sqrt(k*R*T) //Sound Velocity in m/s 
M=C/a //Mach number

//Output
printf('(A)Static conditions:\n    Pressure is %3.2f kPa\n    Temperature is %3.2f K\n    Sound Velocity is %3.2f m/s\n (B)Mach number is %3.2f',P,T,a,M)
