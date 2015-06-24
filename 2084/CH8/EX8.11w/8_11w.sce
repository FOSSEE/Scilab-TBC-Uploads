//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 8.11w
//calculation of the speed of the particle at a given point
 
//given data
hA=1//height(in m) of point A
hB=.5//height(in m) of point B
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
//potential energies at point A and B are
//UA = M*g*hA
//UB = M*g*hB..............(1)
//principle of conservation of energy
//UA + KA = UB + KB........(2)
vB=sqrt(2*g*(hA-hB))

printf('the speed of the particle at a B point is %3.2f m/s',vB)
