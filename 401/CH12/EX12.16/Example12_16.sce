//Example 12.16
//Note: MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Program to determine the ratio of SNRs of FM-IM and PM-IM systems

clear;
clc ;
close ;

//Symbolic representation
syms fd Pa R Po Ac Ba No

//FOR FM-IM 
Df=fd/Ba;   //Frequency Deviation
SNR_FM=3*Df^2*Pa*(R*Po)^2*Ac^2/2/(2*Ba*No);

//FOR PM-IM
Dp=fd/Ba;   //Frequency Deviation
SNR_PM=Df^2*Pa*(R*Po)^2*Ac^2/2/(2*Ba*No);

//Determining Ratio
Ratio=SNR_FM/SNR_PM;

//Displaying the Result in Command Window
disp(Ratio," SNR_FM/SNR_PM = ");