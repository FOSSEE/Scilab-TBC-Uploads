clc
clear

//Input data
C=200 //Velocity of object in m/s
mol=4 //Molecular weight of helium in kg/mol
k=1.67 //Adiabatic constant
Ri=8314 //Ideal gas constant in J/mol-K
T=288 //Temperature in K

//Calculation
R=Ri/mol //Specific gas Constant in J/kg-k
a=sqrt(k*R*T) //Velocity of sound in m/s
M=C/a //Mach number 

//Output
printf('Mach number is %3.1f',M)
