// Exa 6.24
clc;
clear;
close;
// Given data
ro=9;// in kΩ
ro= ro*10^3;// in Ω
V_P= -6;// in V
V_GS = -3;// in V
r= ro/(1-V_GS/V_P)^2;// in Ω
disp(r*10^-3,"The value of chanel resistance in kΩ is : ")

// Note : The unit of chanel resistance i.e. unit of resistance in the book is wrong . It will be in kΩ not in Ω
