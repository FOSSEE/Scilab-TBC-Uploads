clc
clear
//Input data
p=110//Oil pressure in kg/cm^2
pc=25//Pressure in the combustion chamber in kg/cm^2
q=0.805//Velocity coefficient. In textbook it is given wrong as 9.805
d=0.906//Specific gravity

//Calculations
v=(37.1*q*sqrt((p-pc)/d))//Velocity in m/s

//Output
printf('The velocity of injection is %3.0f m/s',v)
