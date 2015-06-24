//Suitable material required

clear;
clc;

printf("\tExample 21.3\n");

R=0.05;
n=poly([0],'x');

//R = (ns-1/ns+1)^2 leading to the equation
//    0.95ns^2-2.1ns+0.95 = 0
//HencE

ns=roots((0.95*n^2)-(2.1*n)+0.95);

disp(ns,'The values of ns are: ");
printf("Thus, soda-lime glass, Pyrex glass, and polyprop would be suitable for this application.");

//End