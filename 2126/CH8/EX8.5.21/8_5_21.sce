clc
clear

//Input data
Px=45 //Static pressure in kPa
T=-20+273 //Static temperature in K
Poy=395 //Stagnation pressure in kPa
k=1.4 //Adiabatic constant 
R=287 //Specific gas constant in J/kg-K

//Calculation
p1=Poy/Px //Pressure ratio
Mx=2.536 //Mach number from normal shock gas tables @p1
Cx=Mx*sqrt(k*R*T) //Air velocity in m/s

//Output
printf('Mach number is %3.3f\n Air velocity is %3i m/s',Mx,Cx)
