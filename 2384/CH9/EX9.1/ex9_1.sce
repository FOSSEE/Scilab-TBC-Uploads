// Exa 9.1
clc;
clear;
close;
format('v',6)
// Given data
V1 = 3000;// in V
V2 = 300;// in V
N2 = 86;// in Turns
Rating = 60*10^3;// in VA
K = V2/V1;
//Transformer ratio,  N2/N1 = K;
N1 = N2/K;// in turns
disp(N1,"The numbers of primary turns is");
I2 = Rating/V2;// in A
disp(I2,"The secondary full load current in A is");
I1 = Rating/V1;// in A
disp(I1,"The primary full load current in A is");
