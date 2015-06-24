// Example 14.1
format('v',6)
clc;
clear;
close;
// given data
V1=15;// in V
V2=1;// in V
R= 100;// in Ω
// The load current 
I= (V1-V2)/R;// in A
I= I*10^3;// in mA
disp(I,"The load current in mA is : ")
