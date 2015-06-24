//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 2.3
//calculation of component of force in vertical direction

//given data
F=10.5 //force(in newton) acting on the particle
theta=37 //angle(in degree) at which force acts

//calculation
Fp=F*cosd(theta); //component of force in vertical direction

disp(Fp,'component of force(in newton) in vertical direction is');
