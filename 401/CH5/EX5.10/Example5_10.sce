//Example 5.10
//Program to find the grating period for reflection

clear;
clc ;
close ;

//Given data
n=1.46;        //CORE REFRACTIVE INDEX
lambda_b=1.55; //um - WAVELENGTH

//Grating Period
lambda=lambda_b/(2*n);

//Displaying the Result in Command Window
printf("\n\n\t Grating Period is %0.2f um .",lambda);