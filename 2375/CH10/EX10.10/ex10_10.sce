// Exa 10.10
clc;
clear;
close;
format('v',6)
// Given data
A = 200;
Beta = 5/100;
Af =A/(1 + (A*Beta));
disp(Af,"The gain of the amplifier with negative feedback is : ")
Dn = 10;// in %
Ddesh_n = Dn/(1+(A*Beta));// in %
disp(Ddesh_n,"The distortion with negative feedback in % is : ");

// Note: In the book, the calculation to find the gain of the amplifier with negative feedback i.e Af is wrong.
