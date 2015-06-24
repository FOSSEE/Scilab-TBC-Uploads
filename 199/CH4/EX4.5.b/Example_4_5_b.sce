// Chapter4
// Page.No-127, Figure.No-4.19
// Example_4_4_b
// Effect of input bias current
// Given
clear;clc;
R1=1*10^3;Rf=100*10^3;
ROM=R1*Rf/(R1+Rf); // Parallel combination of R1 and Rf
printf("\n Parallel combination of R1 and Rf,i.e ROM is = %.f ohm \n",ROM)