clc();
clear;
//Given :
RH= 109677.58; //Rydberg constant for Hydrogen in cm^-1
RHe = 109722.269; //Rydberg constant for Helium in cm^-1
//Ratio = M/m
Ratio = ((4*RH)- (RHe))/(4*(RHe-RH));
printf("M/m value is : %.1f ",Ratio);
