clc
clear

//Input data
P=200 //Pressure in kPa
C=50 //Velocity of air in m/s
d=2.9 //Density in kg/m^3
Mol=32 //Molecular weight of oxygen in kg/mol
k=1.4 //Adiabatic constant
Ri=8314 //Ideal gas constant in J/mol-K

//Calculator
R=Ri/Mol //Specific gas constant in J/kg-K
T=P*10^3/(R*d) //Temperature in K
a=sqrt(k*R*T) //Velocity of sound in m/s 
M=C/a //Mach number 

//Output
printf('Mach number is %3.2f',M)
