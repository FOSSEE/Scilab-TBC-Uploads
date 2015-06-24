clc
clear

//Input data
p1=0.75 //Pressure ratio (Po2/Po1) Since Stagnation pressure drop is 25%
Cp=1150 //Specific heat capacity at constnat pressure in J/kg-K
k=1.33 //Adiabatic constant 

//Calculation
ds=((k-1)/k)*Cp*log(1/p1) //Increase in entropy in J/kg-K

//Output 
printf('Increase in entropy is %3.2f J/kg-K',ds)
