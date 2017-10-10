// exa 4.14 Pg 121
clc;clear;close;

// Given Data
sigma_max=300;// MPa
sigma_min=-150;// MPa
n=1.5;// factor of safety


sigma_m=(sigma_max+sigma_min)/2;// MPa
sigma_a=(sigma_max-sigma_min)/2;// MPa
// Goodman failure line - sigma_m/Sut+sigma_a/Se=1/n
Sut=(sigma_m+sigma_a/(0.5))*n ;// putted Se=0.5*Sut
printf('\n Minimum required ultimate strength, Sut = %.1f MPa',Sut)
