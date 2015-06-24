//Example 1_1
clc;
clear;close;

//Given data
alfa1=0.35;
alfa2=0.4;
IG=40*10^-3;//A

//Solution :
IA=alfa2*IG/(1-(alfa1+alfa2));//A
disp(IA,"Anode current in A : ");
