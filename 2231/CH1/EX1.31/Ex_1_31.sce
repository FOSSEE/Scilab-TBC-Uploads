//Example 1_31
clc;
clear;close;

//Given data: 
R=0.8;//ohm
L=10*10^-6;//H
C=50*10^-6;//F
//R<sqrt(4*L/C)
Rupper=sqrt(4*L/C);//ohm
disp("Maximum value of R should be "+string(Rupper)+" ohm")
disp("Given value of R is "+string(R)+" ohm. The circuit is underdamped.")
t0=%pi/sqrt(1/L/C-R^2/4/L^2);//s
disp(t0,"Time of conduction of thyristor in seconds")
