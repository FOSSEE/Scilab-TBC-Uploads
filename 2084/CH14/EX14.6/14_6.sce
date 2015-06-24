//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.6
//calculation of the excess pressure inside a mercury drop 

//given data
R=2*10^-3//radius(in m) of the drop
S=.464//surface tension(in N/m) of the drop

//calculation
deltaP=2*S/R//excess pressure

printf('the excess pressure inside a mercury drop is %d N/m^2',deltaP)
