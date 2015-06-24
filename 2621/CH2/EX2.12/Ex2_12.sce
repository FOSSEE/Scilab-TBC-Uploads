// Example 2.12
clc;
clear;
close;
// Given data
format('v',9);
IB1= 10;// in µA
IB2= 7.5;// in µA
// Input bias current,
I_in_bias= (IB1+IB2)/2;// in µA
// Input offset current,
I_in_offset= IB1-IB2;// in µA
disp(I_in_bias,"The input bias current in µA is : ")
disp(I_in_offset,"The input offset current in µA is : ")



