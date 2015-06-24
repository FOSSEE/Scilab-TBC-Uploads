//Example 3.13
//Program to determine fiber birefringence for given beat lengths
//(1)Lb = 0.7 mm
//(2)Lb = 80 m

clear;
clc ;
close ;

//Given data
lambda=1.3*10^(-6); //metre - OPERATING WAVELENGTH 

//Part (1)
Lb1=0.7*10^(-3);    //metre - BEAT LENGTH
Bf1=lambda/Lb1;

//Part (2)
Lb2=80;             //metre - BEAT LENGTH
Bf2=lambda/Lb2;

//Displaying the Results in Command Window
printf("\n\n\t The fiber birefringence for Lb = 0.7 mm is %0.2f X 10^(-3) which is high.",Bf1/10^(-3));
printf("\n\n\t The fiber birefringence for Lb = 80 m is %0.2f X 10^(-8) which is low.",Bf2/10^(-8));