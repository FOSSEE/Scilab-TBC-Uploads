// Exa 4.24
clc;
clear;
close;
// Given data
R1= 100;// in kΩ
R2=200;// in kΩ
R3= 20;// in kΩ
R4=40;// in kΩ
//Vout= [1+R2/R1]*[R4/(R3+R4)]*Vin1-R2/R1*Vin2
A=[1+R2/R1]*[R4/(R3+R4)];// (assumed)
disp("Output voltage is "+string(A)+"*(Vin1-Vin2)")
