//Example 8.9
//Program to determine the maximum 3 dB bandwidth permitted by the
//device

clear;
clc ;
close ;

//Given data
tf=5*10^(-12);          //second - ELECTRON TRANSIT TIME
G=70;                   //PHOTOCONDUCTIVE GAIN

//Maximum 3 dB bandwidth permitted by the MSM
Bm=1/(2*%pi*tf*G);

//Displaying the Result in Command Window
printf("\n\n\t Maximum 3 dB bandwidth permitted by the device is %0.1f MHz.",Bm/10^6);