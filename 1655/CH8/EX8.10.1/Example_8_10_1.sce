// Example 8.10.1  page 8.25

clc;
clear;

//erfc 4.24 is given to be 2d-9

SN=(2*sqrt(2)*4.24)^2;  //computing optical SNR
SN=round(SN);
SN1=sqrt(SN);       //computing electrical SNR
printf("\nOptical SNR is %d.\nElectrical SNR is %d.",SN,SN1);
