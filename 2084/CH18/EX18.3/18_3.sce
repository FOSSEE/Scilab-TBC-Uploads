//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.3
//calculation of shift in the position of printed letters by a glass cube

//given data
t=6; //thickness of the cube(in cm)
mu=1.5; //refractive index of glass cube

//calculation
deltat=(1-1/mu)*t; //vertical shift formula derived from snell's law

disp(deltat,'shift(in cm) in the position of printed letters is'); 
