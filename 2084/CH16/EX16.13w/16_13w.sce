//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.13w
//calculation of the length of the closed pipe

//given data
l0=60*10^-2//length(in m) of the open pipe

//calculation
//from the equation of the resonate frequency of the closed organ pipe....l=(n*v)/(4*nu)
l1=l0/4

printf('the length of the closed pipe is %d cm',l1*10^2)
