// Exa 6.7
clc;
clear;
close;
format('v',6)
// Given data
Ao = -4;// in V/V
R_T= 100;// total resistance in k ohm
// R1+R_F= R_T          (i)
// Ao= -R_F/R1             (ii)
R_F= R_T/(1-1/Ao);// in k ohm           (From eq (i) and (ii))
R1= -R_F/Ao;// in k ohm
disp(R1,"The value of R1 in k ohm is");
disp(R_F,"The value of R_F in k ohm is");
