clc
clear

//Input data
To=15+273 //Air Temperature in K
Cp=1005 //Specific heat capacity at constnat pressure in J/kg-K

//Calculation 
Cmax=sqrt(2*Cp*To) //Highest possible velocity in m/s

//Output
printf('Highest possible velocity is %3.2f m/s',Cmax)
