// Exa 2.31
clc;
clear;
close;
format('v',5)
// Given data
R1 = 5;// in ohm
R2 = 5;// in ohm
R3 = 10;// in ohm
V = 10;// in V
Ig = 2;// in A 
I2 = (R1/R3)*Ig;// in A
I1 = I2;// in A
I3 = 0;// in A
R_T = ((R1+R2)*R3)/((R1+R2)+R3);// in ohm
I_T = V/R_T;// in A
I_2 = (R3/((R1+R2)+R3))*I_T;// in A
I_1 = I_2;// in A
I_3 = I_1;// in A
// Total current through upper in 5 Ω resistor 
tot_cur_up_5ohm = I1-I2;// in A
// Total current through lower in 5 Ω resistor 
tot_cur_low_5ohm = I_1+I_2;// in A
// Total current through 10 Ω resistor 
tot_cur_10ohm =  I3+I_3;// in A
disp(tot_cur_up_5ohm ,"The total current through upper in 5 Ω resistor in A is");
disp(tot_cur_low_5ohm,"The total current through lower in 5 Ω resistor in A is");
disp(tot_cur_10ohm,"The total current through in 10 Ω resistor in A is");
