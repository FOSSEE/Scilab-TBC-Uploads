//Example 4_20
clc;
clear;close;

//Given data: 
V=150;//V
Vav=250;//V
Toff=1*10^-3;//s

//Solution :
T=Vav/V*Toff;//s
Ton=T-Toff;//s
disp(Ton,"Period of conduction(seconds)");
