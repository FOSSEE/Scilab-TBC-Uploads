// Exa 13.7

clc; 
clear all;

// Given data
// Refering circuit in fig. 13.7(a) and graph in fig.13.7(b) on page no.422

I=10; // mA
V=30;// Volts
Illumination=400;// in l/m^2

// Solution

disp(" From graph(13.7(b) , cell resistance at 400 l/m^2 is 1 K ohms");
Rcell=1; // K ohms

R1=V/I - Rcell; //Required series resistance

Rdark=100;//Cells dark resistance in K ohms
Idark=V/(R1+Rdark); // Dark current
printf('  The required series resistance and dark current level are %d K ohms amd %.1f mA respectively \n',R1,Idark);
