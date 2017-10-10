//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 29_7w

clc;clear;
//Given Data

elec_field=4*10^5;      //Value of Electric field (Unit:N/C)
mass=1*10^-4;           //Mass of the water droplet (Unit:kg)
gravity=9.8;            //Value of gravity (Unit:m/s^2)

//Calculation

charge=mass*gravity/elec_field;     //Calculation of the charge (Unit:C)

disp(charge,"The charge on the droplet is (Unit: C)");
