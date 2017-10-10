//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 30_2w

clc;clear;
//Given Data

charge_density=2*10^-6;         //Value of surface Charge density (Unit:C/m^2) 
epsilon=8.85*10^-12;            //Value of electric constant (Unit: C^2/N-m^2)
radius=1*10^-2;                 //Value of radius (Unit:m)
theta=60;                       //Angle of flux w.r.t. normal from z axis (Unit: degree) 

//Calculation

area=%pi*radius^2;                                      //Calculation of the circulat Area (Unit:m^2)
flux=charge_density*cosd(theta)*area/(2*epsilon);       //Calculation of the flux (Unit:N-m^2/C)

disp(flux,"The flux of the electric field through a circular area is (Unit:N-m^2/C ) ");
