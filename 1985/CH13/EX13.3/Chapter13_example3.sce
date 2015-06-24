clc
clear
//Input data
d=4*10^3//Density of CsCl in kg/m^3
a1=132.9//Atomic weight of Cs
a2=35.5//Atomic weight of Cl
a=(4.12*10^-10)//Lattice constant in m

//Calculations
m=(d*a^3)//Mass of the CsCl unit cell in kg
N=((a1+a2)/m)/10^26//Avagadro number in 10^26 per kg mole

//Output
printf('The value of the Avagadro constant is %3.4f*10^26 per kg mole',N)
