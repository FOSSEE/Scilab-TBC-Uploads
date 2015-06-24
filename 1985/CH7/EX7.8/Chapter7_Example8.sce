clc
clear
//Input data
v=1000//Volume of the hall in m^3
T=2//Reverberation time in s
s=350//Area of the sound absorbing surface in m^2

//Calculations
a=(0.16*v)/(T*s)//The average absorption coefficient 

//Output
printf('The average absorption coefficient of the room is %3.4f',a)
