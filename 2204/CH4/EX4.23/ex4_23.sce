// Exa 4.23
clc;
clear;
close;
// Given data
R3 = 1;// in k ohm
R4 = 1;// in k ohm
R_min = R4/R3;
R_4 = 50;// in k ohm
R_max = (R_4+R4)/R3;
R2 = 10;// in k ohm
A_F = 5;
R1 = (((A_F/R_min)-1)*R2)/2;// in k ohm
disp(R1,"The value of R1 in kΩ is");
disp(R2,"The value of R2 in kΩ is : ")
