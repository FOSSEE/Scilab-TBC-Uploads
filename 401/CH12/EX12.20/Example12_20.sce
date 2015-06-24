//Example 12.20
//Note: MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Program to obtain an expression for the total noise figure for the
//system

clear;
clc ;
close ;

//Symbolic representation
syms F G k M;

//Given data
//F_to = F1*G1 + F2*G2 + F3*G3 +......+ FM*GM
//For Identical Repeaters : 
//F1*G1 = F2*G2 = F3*G3 =......= FM*GM = F*G(say)
x=F*G;
F_to = symsum(x,k,1,M);

//Displaying The Results in Command Window
disp (F_to,"TOTAL NOISE FIGURE: F_to = ");
disp ("At the output from the first amplifier repeater, a degradation in SNR of F*G occurs followed by a decrease of 1/M");