// Exa 2.30
clc;
clear;
close;
format('v',5)
// Given data
R1 = 4;// in ohm
R2 = 4;// in ohm
R3 = 8;// in ohm
Ig = 3;// in A 
V = 15;// in V
I1 = R1/(R1+R2)*Ig;// in A
I2 = -I1;// in A
I3 = 0;// in A
R_T = ((R1+R2)*R3)/((R1+R2)+R3);// in ohm
I_T = V/R_T;// in A
I_2= R3/(R1+R2+R3)*I_T;// in A
I_1 = I_2;// in A
// Total current through upper 4 Ω resistor 
tot_cur_up_4ohm= I1+I2;// in A
// Total current through lower 4 Ω resistor 
tot_cur_low_4ohm= I_1+I_2;// in A
// Total current through 8Ω resistor 
tot_cur_8ohm= I3+I_T;// in A
disp(tot_cur_up_4ohm,"Total current through upper 4 Ω resistor in A is : ")
disp(tot_cur_low_4ohm,"Total current through lower 4 Ω resistor in A is : ")
disp(tot_cur_8ohm,"Total current through 8 Ω resistor in A is : ")
