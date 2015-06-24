// Exa 7.4
clc;
clear;
close;
// Given data
Vmin= 2.2;// in V
Vmax= 4.0;// in V
I= 11;// in mA
I= I*10^-3;//in A
Resistance= Vmin/I;// in Ω
Current = Vmax/Resistance;// in A
disp(Resistance,"Resistance in Ω is : ")
disp(Current*10^3,"Current in mA is : ")
