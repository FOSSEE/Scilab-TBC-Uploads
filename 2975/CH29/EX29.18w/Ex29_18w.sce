//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 29_18w

clc;clear;
//Given Data

dipole_moment=3.4*10^-30;       //Dipole moment of the HCl molecule (Unit:N-m)
distance=1*10^-10;              //Distance between the two atoms (Unit: m)

//Calculation

charge=dipole_moment/distance;          //Calculation of the magnitude of the charge (Unit:C)

disp(charge,"The magnitude of the charge is (Unit:C)")
