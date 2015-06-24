// Exa 1.14
clc;
clear;
close;
format('v',7)
// Given data
I_electrons = 3/4;
I_holes= 1/4;
v_h = 1;
v_e = 3;
ratio = (I_electrons/I_holes)*(v_h/v_e);
disp(ratio,"Ratio of electrons to holes is");
