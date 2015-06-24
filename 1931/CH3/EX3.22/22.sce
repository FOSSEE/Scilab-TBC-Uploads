clc
clear
//INPUT DATA
r=1.2*10^-10//atomic radius of crystal of BCC structure in m

//CALCULATION
a=((4*r)/sqrt(3))//lattice constant of BCC structure in m
V=((a*a*a)/10^-29)//The volume of cell in m^3*10^-29

//OUTPUT
printf('The volume of cell is %3.3f*10^-29 m^3',V)
