clc
clear
//Input data
H=10^4//Magnetic field intensity in A/m
s=3.7*10^-3//Susceptibility
uo=(4*3.14)*10^-7//Permeability of free space in H/m

//Calculations
M=s*H//Magnetization n A/m. The textbook answer is given as 370 A/m which is wrong.
B=(uo*(M+H))/10^-2//Flux density in Wb/m^2 *10^-2

//Output
printf('Magnetization in the material is %3.0f A/m \n The flux density in the material is %3.5f*10^-2 Wb/m^2',M,B)
