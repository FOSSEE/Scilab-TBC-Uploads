//Example 2.1 : radius of the first bohr"s orbit 
clc;
clear;
close;
//given data :
format('v',5)
ep=8.854*10^-12;//
h=6.626*10^-34;//
m=9.1*10^-31;//in Kg
e=1.602*10^-19;//
r1=((ep*(h^2))/((%pi*m*(e^2))));//
disp(r1*10^10,"radius,r1(in angstrom)  = ")

