// Exa 2.10
clc;
clear;
close;
// Given data
// For positive value of error
R1= 100+100*2/100;//in ohm
R2= 200+200*2.5/100;// in ohm
AddR1R2_pos= R1+R2;// in ohm
// For negative value of error
R1= 100-100*2/100;//in ohm
R2= 200-200*2.5/100;// in ohm
AddR1R2_neg= R1+R2;// in ohm
disp("Values of R1+R2 in ohm are "+string(AddR1R2_neg)+" ohm to "+string(AddR1R2_pos)+" ohm")
