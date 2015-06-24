// Exa 6.9
clc;
clear;
close;
format('v',6)
// Given data
Ao = 1.5;// in V/V
R = 10;// in k ohm
// Ao = (1+(R_F/R1))
disp("The relation of R1 and R_F can be implemented in two ways : ");
disp("(i) : When R_F= R || R, in this condition")
// When R_F= R || R
R1= R;//in k ohm
R_F= R1*(Ao-1);// in k ohm
disp(R1,"The value of R1 in k ohm is : ");
disp(R_F,"The value of R_F in k ohm is : ")
// When both resistor connected in series
disp("(ii) : When both resistor connected in series, in this condition")
R1= 2*R;// in k ohm
R_F= R1*(Ao-1);// in k ohm
disp(R1,"The value of R1 in k ohm is : ");
disp(R_F,"The value of R_F in k ohm is : ")

