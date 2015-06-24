clc
clear

//Input data
T=300+273 //Static Temperature in K
C=200 //Velocity in m/s
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K

//Calculation
To=T+(C^2/(2*Cp)) //Stagnation Temperature in K
C_max=sqrt(2*Cp*To) //Maximum possible velocity obtained by air in m/s

//Output
printf('Maximum possible velocity obtained by air is %3.2f m/s',C_max)
