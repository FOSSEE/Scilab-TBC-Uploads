//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.4
//calculation of the force by which the surface on one side of the diameter pulls the suface on the other side

//given data
r=5*10^-2//radius(in m) of the beaker
S=.075//surface tension(in N/m) of the water

//calculation
l=2*r//length of diameter of the surface
F=S*l//force

printf('the force by which the surface on one side of the diameter pulls the suface on the other side is %3.1e N',F)
