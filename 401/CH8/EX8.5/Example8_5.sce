//Example 8.5
//Program to determine maximum response time for the device

clear;
clc ;
close ;

//Given data
w=25*10^(-6);           //metre - WIDTH OF DEPLETION REGION
vd=3*10^4;              //m/s - DRIFT VELOCITY OF CARRIER

//Maximum 3 dB Bandwidth
Bw=vd/(2*%pi*w);

//Maximum response time
t=1/Bw;

//Displaying the Result in Command Window
printf("\n\n\t Maximum response time for the device is %0.1f ns.",t/10^(-9));