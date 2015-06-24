// Exa 2.15
clc;
clear;
close;
// Given data
// u= 150+2.4 miu F and 150-2.4 miu F
// v= 120+1.5 miu F and 120-1.5 miu F
y=150+120;
del_y = 2.4+1.5;// Pos and neg
disp(del_y,"Limiting error with pos and neg in miu F")
RelLimError= del_y/y*100;// in %
disp(RelLimError,"Relative limiting error with pos and neg");

