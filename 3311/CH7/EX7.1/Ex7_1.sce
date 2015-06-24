// chapter 7
// example 7.1
// Compute the peak value of circulating current
// page-431
clear;
clc;
// given
Erms=230; // in V (per phase voltage supply)
w=315; // in rad/s
L=12; // in mH
alpha1=60, alpha2=120; // in degree
// calculate
L=L*1E-3; // changing unit from mH to H
i_cp=(3*sqrt(2)*Erms/(w*L))*(1-cosd(30)); // calculation of peak value of circulating current
printf("\nThe peak value of circulating current is \t i_cp=%.2f A",i_cp);
// Note: The answer varies slightly due to precise calculation