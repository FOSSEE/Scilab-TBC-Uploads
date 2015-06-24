//Example 6.2
//Program to determine the number of longitudinal modes and their 
//frequency separation in a ruby laser

clear;
clc ;
close ;

//Given data
Lambda=0.55*10^-6;    //metres - PEAK EMISSION WAVELENGTH
n=1.78;               //REFRACTIVE INDEX
c= 2.998*10^8;        //m/s - SPEED OF LIGHT
L=4*10^(-2);          //metres - CRYSTAL LENGTH

//Number of Longitudinal modes
q=2*n*L/Lambda;

//Frequency separation of the modes
del_f=c/(2*n*L);

//Displaying the Results in Command Window
printf("\n\n\t Number of Longitudinal modes is %0.1f X 10^5.",q/10^5);
printf("\n\n\t Frequency separation of the modes is %0.1f GHz.",del_f/10^9);