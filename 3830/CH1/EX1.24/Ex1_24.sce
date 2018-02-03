// Exa 1.24

clc;
clear;

// Given

Am = 20; // Capacitance in Farads
dr= 5 ; // Percentage variation in capacitor value

// Solution

// A = Am (±) Am× dr/100 ; // A is guranteed value of capacitor

A_upperlimit = Am*(1+ dr/100) ; 
A_lowerlimit = Am*(1- dr/100) ; 

printf(' The guranteed  limits of capacitance range from %.1f F to %.1f F \n',A_lowerlimit,A_upperlimit);
