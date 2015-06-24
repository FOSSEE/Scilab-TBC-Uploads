//example1.2
//page 12
clc; funcprot(0);
//initialissation of variable
delP=10^6;//change in pressure
V=1//volume
Beta=2.2*10^9;
delV=-delP/V/Beta;
perV=-delV*100/V;//percent change
disp(perV,"the percent change in volume (%);");
clear
