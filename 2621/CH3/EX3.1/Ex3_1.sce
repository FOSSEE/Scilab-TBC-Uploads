// Example 3.1
clc;
clear;
close;
// Given data
format('v',6);
Af= 10;// voltage gain
R1= 3;// in Ω
Rf= (Af-1)*R1;// From Af= 1+Rf/R1
disp(R1,"The value of R1 in Ω is : ");
disp(Rf,"The value of Rf in Ω is : ");


