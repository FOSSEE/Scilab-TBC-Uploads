//Example 5.1
//Program to calculate the optical loss in decibels at the joint

clear;
clc ;
close ;

//Given data
n1=1.5;          //CORE REFRACTIVE INDEX
n=1.0;

//Magnitude of Frensel reflection at the fiber-air interface
r=((n1-n)/(n1+n))^2;

//Optical Loss
Loss_fres=-10*log10(1-r);

//Displaying the Results in Command Window
printf("\n\n\t Optical Loss is %0.2f dB .",Loss_fres);
printf("\n\n\t Total loss due to Frensel Reflection at the fiber joint is %0.2f dB .",Loss_fres*2);