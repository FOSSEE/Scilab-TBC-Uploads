clear all
clc
close

u=10//speed of belt in m/s
w=0.1//width of the belt in m
rhos=0.5*1e-6//surface charge density on the belt in C/m^2
Rleak=1e14//Resistanc ein ohm

//Charging current in A
I=rhos*u*w
printf('Charging current in uA %f',I*1e6)

//Potentail difference between the dome and the base in V
V=I*Rleak
printf('Potentail difference between the dome and the base in MV is %f',V/1e6)
