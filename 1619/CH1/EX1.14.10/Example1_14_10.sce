//Example 1.14.10 page 1.49
//To find the diameter of the core..

clc;
clear;

del= 0.01;      //Relative RI difference..
n1= 1.5;
M= 1100;        //Number of modes...
lamda= 1.3;     //wavelength of operation in um..
V= sqrt(2*M);       //Normalised frequency...
d= V*lamda/(%pi*n1*sqrt(2*del));    //diameter of core..
printf('The diameter of the core is %.2f um',d);
