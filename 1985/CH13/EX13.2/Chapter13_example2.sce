clc
clear
//Input data
d=9.6*10^2//Density of sodium in kg/m^3
a=23//Atomic weight of sodium 
n=2//Number of atoms present in one unit cell in bcc crystal
x=6.023*10^26//Avagadro constant per kg mole

//Calculations
m=(n*a)/x//Mass of one unit cell in kg
a1=(m/d)^(1/3)/10^-10//Lattice constant of sodium angstroms

//Output
printf('The lattice constant for sodium crystal is %3.1f angstroms',a1)
