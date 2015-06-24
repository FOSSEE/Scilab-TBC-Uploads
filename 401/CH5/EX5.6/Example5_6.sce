//Example 5.6
//Program to calculate the loss at the connection due to mode field 
//diameter mismatch

clear;
clc ;
close ;

//Given data
MFD01=11.2;            //um - MODE FIELD DIAMETER
MFD02=8.4;             //um - MODE FIELD DIAMETER

//Calculation of Intrinsic Loss
omega_01=MFD01/2;          
omega_02=MFD02/2;
Loss_int=-10*log10(4*(omega_02/omega_01+omega_01/omega_02)^(-2))

//Displaying the Result in Command Window
printf("\n\n\t Intrinsic Loss is %0.2f dB .",Loss_int);