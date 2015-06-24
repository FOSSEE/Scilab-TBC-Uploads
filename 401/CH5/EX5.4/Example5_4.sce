//Example 5.4
//Program to estimate the insertion loss for
//NA = 0.2
//NA = 0.4

clear;
clc ;
close ;

//Given data
n1=1.48;          //CORE REFRACTIVE INDEX
n=1.0;
theeta=5;         //degree - ANGULAR MISALIGNMENT

//Calculation for NA = 0.2
NA=0.2
eeta_ang1=16*(n1/n)^2/(1+n1/n)^4*(1-n*theeta*%pi/180/(%pi*NA));
//Insertion Loss
Loss_ang1=-10*log10(eeta_ang1);

//Calculation for NA = 0.4
NA=0.4
eeta_ang2=16*(n1/n)^2/(1+n1/n)^4*(1-n*theeta*%pi/180/(%pi*NA));
//Insertion Loss
Loss_ang2=-10*log10(eeta_ang2);

//Displaying the Results in Command Window
printf("\n\n\t Insertion Loss (NA=0.2) is %0.2f dB .",Loss_ang1);
printf("\n\n\t Insertion Loss (NA=0.4) is %0.2f dB .",Loss_ang2);