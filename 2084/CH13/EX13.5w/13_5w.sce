//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 13.5w
//calculation of the force applied on the water in the thicker arm

//given data
A1=1*10^-4//area(in m^2) of arm 1
A2=10*10^-4//area(in m^2) of arm 2
f=5//force(in N) applied on the water in the thinner arm

//calculation
//P = P0 + (h*rho*g)........using this equation
F=f*A2/A1//force applied on the water in the thicker arm

printf('the force applied on the water in the thicker arm is %d N',F)
