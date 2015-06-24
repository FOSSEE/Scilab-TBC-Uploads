// Exa 5.2
format('v',6)
clc;
clear;
close;
// Given data
R1 = 30;// in ohm
R2 = 40;// in ohm
R3 = 60;// in ohm
R4 = 40;// in ohm
R5 = 70;// in ohm
h11 = (R1+(R2*R5/(R2+R5)));// in ohm
disp(h11,"The numericals values of h11 in ohm is");
h12 =R2*R4/(R4+R5)*1/(R3+R4*R5/(R4+R5))
disp(h12,"The numericals values of h12 is");
h21 =-R4*R2/(R5+R2)*1/(R3+R5*R2/(R5+R2))
disp(h21,"The numericals values of h21 is");
h22 = 1/(R3+(R2*R5/(R2+R5)))
disp(h22,"The numericals values of h22 in mho is");

// Note : In the book the calculated value of h11 i.e 30+(40 || 70) = 53 is wrong. correct value is 55.45 so the answer in the book is wrong.
