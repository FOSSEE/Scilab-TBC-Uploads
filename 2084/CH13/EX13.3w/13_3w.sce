//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 13.3w
//calculation of the height of the water coloumn

//given data
h1=2*10^-2//difference in the height(in m)
s=13.6//specific gravity of mercury

//calculation
//P = P0 + (h*rho*g)........using this equation
h=h1*s//height of the water coloumn

printf('the height of the water coloumn is %d cm',h*10^2)
