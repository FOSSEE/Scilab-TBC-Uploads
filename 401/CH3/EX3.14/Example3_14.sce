//Example 3.14
//Program to determine the mode coupling parameter for the fiber

clear;
clc ;
close ;

//Given data
L=3.5*10^3;        //metre - LENGTH
CT=-27;            //dB - POLARIZATION CROSSTALK

//Mode coupling parameter for the fiber
h=(10^(CT/10))/L; //as tan(h*L)=h*L for small values

//Displaying the Result in Command Window
printf("\n\n\t The mode coupling parameter for the fiber is %0.1f X 10^(-7)/m.",h/10^(-7));