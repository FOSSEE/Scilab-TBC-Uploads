// Exa 6.4
clc;
clear;
close;
// given data 
fc_original=2;//in KHz
fc_new=3;//in KHz
R_original=8;//in Kohm
R_new=fc_original*R_original/fc_new;//in Kohm
disp("Change the resistance value 8 Kohm to a new value.");
disp(R_new,"New value of resistance in ohm is :")