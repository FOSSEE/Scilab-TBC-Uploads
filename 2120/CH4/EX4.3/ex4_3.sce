// Exa 4.3
clc;
clear;
close;
// Given data
W1 = -25;// in kJ
W2 = 45;// in kJ
Q1 = 65;// in kJ
Q2 = -40;// in kJ
// del_U = Q - W and but for a cycle del_U = 0, So
// Q = W
// Q1 + Q2 +Q3 = W1 +W2
Q3 = W1 + W2 - Q1 - Q2;// in kJ
disp(Q3,"Third Heat transfer in kJ is ");
disp("That is Third Heat transfer is of "+string(abs(Q3))+" kJ from the fluid");
