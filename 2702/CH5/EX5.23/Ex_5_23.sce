// Exa 5.23
clc;
clear;
close;
// Given data
A=10^5;
Af= 10^3;
// Af= A/(1+A*Bita)
Bita= 1/Af-1/A;
GDF= 1+A*Bita;// gain densitivity factor
disp(GDF,"Gain densitivity factor is : ")
// Part (a) when A drops 10 %
A_desh= A-A*10/100;
Af_desh= A_desh/(1+A_desh*Bita);
CorresPer= (Af-Af_desh)/Af*100;// corresponding percentage in %
disp(CorresPer,"When A drops by 10 % then corresponding percentage is ")
// Part (b) when A drops 30 %
A_desh= A-A*30/100;
Af_desh= A_desh/(1+A_desh*Bita);
CorresPer= (Af-Af_desh)/Af*100;// corresponding percentage in %
disp(CorresPer,"When A drops by 30 % then corresponding percentage is ")











