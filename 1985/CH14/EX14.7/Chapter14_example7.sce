clc
clear
//Input data
M=2300//Magnetization in A/m
B=0.00314//Flux density in Wb/m^2
uo=(4*3.14)*10^-7//Permeability of free space in H/m

//Calculations
H=(B/uo)-M//Magnetizing force in A/m
ur=(M/H)+1//Relative permeability

//Output
printf('The magnetizing force is %3.0f A/m \n The relative permeability is %3.1f',H,ur)
