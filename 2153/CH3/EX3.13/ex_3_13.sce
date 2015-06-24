
//Example 3.13 : number of atom/mm^2 of planes
clc;
clear;
close;
//given data :
format('v',9)
a=2.87*10^-7; // lattice constant in mm
A=1/a^2;// for 100 planes 
B=1.414/a^2;//for(110) planes
C=1.732/a^2;// for(111) planes
disp(A,"number of atom for (100) plane, = ")
disp(B,"number of atoms for (110) plan, = ")
disp(C,"number of atoms for (111) plan, = ")
