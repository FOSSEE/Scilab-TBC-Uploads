clc
clear
//INPUT DATA
r=0.1605*10^-9//radius of magnesium atom which has HCP structure in m

//CALCULATION
a=2*r//lattice constant of magnesium which has HCP structure in m
c=(a*sqrt(8/3))//height of the HCP structure in m
V=((3*sqrt(3)*a*a*c)/3)/10^-28//Volume of the unit cell of Magnesium which has HCP structure in m^3*10^-28

//OUTPUT
printf('The Volume of the unit cell of Magnesium which has HCP structure is %3.4f*10^-28 m^3',V)
