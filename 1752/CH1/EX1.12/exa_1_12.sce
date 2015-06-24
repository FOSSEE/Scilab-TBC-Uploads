//Exa 1.12
clc;
clear;
close
// given data
T1=100;// in degree C
T2=10;// in degree C
A=3*5;//in square meter
x=40*10^-2;// thickness in m^2
k=1.6;// in W/mk
h=10;// in W/m^2k
// Total resistance in heat flow path
sigmaR=x/(k*A)+1/(h*A);
// so heat transfer rate
q=(T1-T2)/sigmaR;// in Watt
q=q*10^-3;//in kW
disp(q,"Heat transfer rate in kW is :");// 

// Note: Answer in the book is wrong
