clc
clear

//Input data
M=0.85 //Mach number
P=80 //Pressure in kPa
k=1.4 //Adiabatic Constant

//Calculation
Po=P*(1+(((k-1)/2)*M^2))^(k/(k-1)) //Pressure acting on the surface of the body in kPa

//Output 
printf('The highest pressure acting on the surface of the body is %3.1f kPa',Po)
