//Example 12.5
//Program to determine the total channel loss ignoring dispersion

clear;
clc ;
close ;

//Given data
alpha_fc=5;                //dB/km - FIBER CABLE ATTENUATION
alpha_j=2;                 //dB/km - SPLICE LOSS
alpha_s=3.5;               //dB - SOURCE CONNECTOR LOSS
alpha_d=2.5;               //dB - DETECTOR CONNECTOR LOSS 
L=4;                       //km - LENGTH OF OPTICAL FIBER LINK

//Total channel loss
alpha_cr=alpha_s+alpha_d
C_L=(alpha_fc+alpha_j)*L+alpha_cr;

//Displaying The Result in Command Window
printf("\n\n\tTotal channel loss, C_L = %1.0f dB",C_L)