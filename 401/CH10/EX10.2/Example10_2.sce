//Example 10.2
//Note: MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Program to derive an approximate equation for the cavity gain
//of an SOA
 
clear;
clc ;
close ;

syms R1 R2;

//For 3 dB peak through ratio
//Let A=sqrt(R1*R2)*Gs
A=(1-sqrt(0.5))/(1+sqrt(0.5));

//Cavity gain
G=A/(1-A)^2/sqrt(R1*R2);;

//Displaying the Result in Command Window
disp(G,"The approximate equation of cavity gain is, G = ")