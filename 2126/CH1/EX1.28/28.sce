clc
clear

//Input data
C=300 //Velocity of air in m/s 
P=1 //Static pressure in kPa
T=290 //Static temperature in K
k=1.4 //Adiabatic constant
R=287 //Specific gas constant in J/kg-k
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K

//Calculation
To=T+(C^2/(2*Cp)) //Stagnation temperature in K
Po=P*(To/T)^(k/(k-1)) //Stagnation pressure in kPa
a=sqrt(k*R*T) //Sound velocity in m/s
Co=sqrt(k*R*To) //Sound velocity at Stagnation condition in m/s 

//Output
printf('(A)Stagnation pressure and temperature are %3.4f bar and %3.2f K\n (B)Velocity of sound in the dynamic and stagnation conditions are %3.2f m/s and %3.2f m/s',Po,To,a,Co)
