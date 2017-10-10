// Exa 1.1
format('v',7);
clc;
clear;
close;
// Given data
G= -100;
R1= 2.2;// in kohm
R1=R1*10^3;// in ohm
// Formula G=-Rf/R1
Rf= -G*R1;
Rf= Rf*10^-3;// in kohm
disp(Rf,"The value of Rf in kohm is ")
