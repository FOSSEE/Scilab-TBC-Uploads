// Example 6.5 //optical power 
clc;
clear;
close;
r=0.01;//fresenel reflection coefficient
NA=0.15;//numeical apertrure
Rd=30;//radiance in W sr-1 cm-2
R=30*10^-4;//radis in centi meter
A=(%pi*R^2);//area 
Pc=(%pi*(1-r)*A*Rd*NA^2)*10^6;//optical power coupled in mincro watt
disp(Pc,"optical power coupled in micro Watt is")
// answer is wrong in the textbook
