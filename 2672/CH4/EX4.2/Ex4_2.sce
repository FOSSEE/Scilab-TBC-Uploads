//Example 4_2
clc;
clear;
close;
format('v',7)
//given data : 
c=3*10^8;//m/s//Speed of light
h=1.05*10^-34;//Js//Planks Constant
lambda=0.5;//micro m///or less
lambda=lambda/10^6;//m
Eg=2*%pi*h*c/lambda;//J
Eg=Eg/(1.6*10^-19);//eV
disp(Eg,"Bandgap Eg(eV)");
disp("Semiconductors Guess: C, BN, GaN & SiC");
