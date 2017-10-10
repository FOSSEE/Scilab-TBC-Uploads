//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 30_6w

clc;clear;
//Given Data

k=9*10^9;                           //Value of the coulomb constant (Unit: N-m^2/C^2)
A=100;                              //Value of A (Unit:V/m^2)
a=20*10^-2;                         //Value of the radius of sphere (Unit: m)

//Calculation

charge=A*a^3/k;                     //Calculation of charge contained in the sphere (Unit:C) 

disp(charge,"The charge contained in a sphere is (Unit:C)");
