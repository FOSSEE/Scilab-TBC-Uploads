
//Problem 1
//Calculate the net magnetic moment per iron atom in crystal
clear
clc
l=2.87// The lattice parameter of BCC iron in A
v=((2.87)^3)*10^-30// Volume of the unit cell in m^3
n= 2// No. of atoms in the unit cell
M=1750*1000// Saturation magnetization of BCC irons in A/m
m=(M*v)/n// Net magnetic moment per atom in Am^2
printf('Net magnetic moment = %.27f ',m)
