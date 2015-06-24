//Exa1.1
clc;
clear;
close;
//given data :
FC=2000000;//in Rs
v=100;//in Rs
s=200;//in Rs
Q=60000;//in units
//Part a : Break even quantity
BEQ=FC/(s-v);//in units
disp(BEQ,"Break even quantity in units : ");
//Part b : Break even sales
BES=FC*s/(s-v);//in Rs
disp(BES,"Break even sales in Rs. : ");
//Part c : Contribution & margin of safety
Con=s*Q-v*Q;//in Rs
disp(Con,"Contribution in units : ");
Mos=Q*s-BES;//in Rs
disp(Mos,"Margin of safety in Rs. : ");