
//Example 3.12 : number of atom/mm^2
clc;
clear;
close;
format('v',8)
//given data :
a=3.03*10^-7; // lattice constant in mm
A=1/a^2;// for 100 planes 
B=0.707/a^2;//for(110) planes
C=0.58/a^2;// for(111) planes
disp(A,"number of atom for (100) plane, = ")
disp(B,"number of atoms for (110) plan, = ")
disp(C,"number of atoms for (111) plan, = ")
