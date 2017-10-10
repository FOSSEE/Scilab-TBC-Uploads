//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 30_1w

clc;clear;
//Given Data

elec_field=100;         //Magnitude of Electric field (Unit: N/C)
edge=10*10^-2;          //Value of the edge of the square (Unit:m)
theta=0;                //As the normal to the area points along the electric field , angle is zero (Unit : degree)

//Calculation

flux=elec_field*edge^2*cosd(theta);     //Calculation  of the flux of this field through a plane square area in Y-Z plane (Unit: N-m^2/C)

disp(flux,"The flux of this field through a plane square area in Y-Z plane is (Unit: N-m^2/C)")
