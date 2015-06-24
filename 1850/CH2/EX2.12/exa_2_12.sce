// Exa 2.12
clc;
clear;
close;
// Given data
format('v',9)
IB1= 10;// in mA
IB2= 7.5;// in mA
I_in_bias= (IB1+IB2)/2;// in mA
disp(I_in_bias,"Input bias current in mA")
I_in_offset= IB1-IB2 ;// in mA
disp(I_in_offset,"Input offset current in mA")

// Note: Units in Answer in the book is wrong
