
//Example No.6.18
//Page No.194.
clc;clear;
r = 0.97*10^(-10);
R = 1.81*10^(-10);
Pd = ((%pi)/(3*sqrt(2)));
printf("\nThe packing density is %.2f",Pd);
//Ionic factor of NaCl//
IPF = (4*(4/3)*%pi*(r^(3)+R^(3)))/((2*(r+R))^(3));//Ionic packing factor of NaCl crystal.
printf("\nThe ionic packing factor of NaCl crystal is %.3f",IPF);
