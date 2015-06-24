//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.6aw
//calculation of minimum refractive index for parallel emergence for given condition in right prism

//given data
thetac=45; //critical angle(in degree) for given conditions

//calculation
mu=1/(sind(thetac)); //anell's law

disp(mu,'for total internal reflection refractive index of material of given right prism should be greater than or equal to');
 
