//Example 4_13
clc;
clear;close;

//Given data: 
V=500;//V
I=10;//A
f=400;//Hz

//Solution :
alfa=0.5;//for maximum swing
//I=V/(4*f*L);//A
L=V/(4*f*I);//H
disp(L,"Series inductance(H)");
