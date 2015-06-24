// Exa 3.1
format('v',5)
clc;
clear;
close;
// given data
Vin= 12;// in V
V_LED= 2;// in V
Rs= 470;// in Ω
Vs= Vin-V_LED;// in V
// The LED current 
I= Vs/Rs;// in A
I= I*10^3;// in mA
disp(I,"The LED current in mA is : ")

