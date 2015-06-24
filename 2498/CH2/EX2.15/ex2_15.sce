// Exa 2.15
clc;
clear;
close;
format('v',6)
// Given data
V = 10;// in V
V1 = 2.5;// in V
R = 1;// in Mohm
R = R * 10^6;// in ohm
i = (V-V1)/R;// in A
i = i * 10^6;// in µA
// The output voltage for a complete cycle 
Vo1 = (i*10^-6*R)+V1;// in V
disp(Vo1,"The output voltage for a complete cycle in V is");
// The output voltage for half neagtive cycle 
Vo2 = V1;// in V
disp(Vo2,"The output voltage for half negative cycle in V is");
