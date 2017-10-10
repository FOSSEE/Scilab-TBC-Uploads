clc;
clear;
PC=190 //optical Power generated in mW
I=25*10^-3 //in mA
V=1.5 //in V

//Calculation
P=V/I //Electrical Power
n=PC/P

format("v",5)
disp(n/10,"Power conversion efficiency (%)= ")
//The answer provided in the textbook is wrong
