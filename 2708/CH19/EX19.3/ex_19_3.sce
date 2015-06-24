//Example 19.3 // position of fermi level 
clc;
clear;
//given data :
Eo=.3;// initial position in eV
T=300;//initially temperature in kelvin
T1=330;// final temperature in kelvin
E=Eo*T1/T;// (formula to calculate) final position in eV
disp(E,"new position of fermi level in eV")
