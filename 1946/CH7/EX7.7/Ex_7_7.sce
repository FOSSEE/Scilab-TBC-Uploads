// Example 7.7;//optical power 
clc;
clear;
close;
r=0.01;//fresenel reflection coefficient
NA=0.15;//numeical apertrure
Rd=30;//radiance in W sr-1 cm-2
i=40;//currenct in milli ampere
R=25*10^-4;//radis in centi meter
A=(%pi*R^2);//area 
Pc=(%pi*(1-r)*A*Rd*NA^2)*10^6;//optical power coupled in mincro watt
disp(Pc,"optical power coupled in mincro watt is")
