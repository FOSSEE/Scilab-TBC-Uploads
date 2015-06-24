clc
clear

//Input data
C=215 //Velocity in m/s
T=30+273 //Static temperature in K
P=5 //Static pressure in bar
R=287 //Specific gas constant in J/kg-k
k=1.4 //Adiabatic Constant

//Calculations
a=sqrt(k*R*T) //Sound Velocity in m/s 
M=C/a //Mach number
To=T*(1+(((k-1)/2)*M^2)) //Stagnation temperature in K
Po=P*(To/T)^(k/(k-1)) //Stagnation pressure in kPa

//Output
printf('(A)Stagnation Pressure is %3.4f bar\n (B)Mach number is %3.3f',Po,M)
