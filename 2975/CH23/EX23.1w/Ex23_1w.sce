//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 23_1w

clc;clear;
//Given Data
temp=373.15;//Temperature at steam point (Unit Kelvin)
press=1.5*10^4;//Pressure at steam point(Unit Pascal)

//calculation
ptr=(273.16*press)/temp;//Calculation of pressure at triple point of water (Unit : pascal)

 
disp(ptr,"Pressure of water at triple is (unit: Pascal)");

