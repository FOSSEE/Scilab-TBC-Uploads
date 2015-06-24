//Example 4 // Frequency
clc;
clear;
close;
//given data :
T=625;// in N
T1=100;// in N
l=1/2;
n=240;// in Hz
n1=1/l*(sqrt(T1/T))*n;
disp(n1,"The frequency,n1(Hz) = ")
