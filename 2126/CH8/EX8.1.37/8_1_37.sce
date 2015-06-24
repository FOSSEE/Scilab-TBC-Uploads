clc
clear

//Input data
M=0.8 //Mach number
T=20+273 //Temperature in K
k=1.4 //Adiabatic constant 

//Calculation 
To=T*(1+(((k-1)/2)*M^2)) //Temperature of air at nose of aircraft in K
To1=To-273 //Temperature of air at nose of aircraft in degree Centigrade

//Output 
printf('Temperature of air at nose of aircraft is %3.1f degree Centigrade',To1)
