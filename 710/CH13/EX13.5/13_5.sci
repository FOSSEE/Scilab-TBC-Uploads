clc();
clear;
//To determine the numerical apperture
ns=2.89;                           //sum of refractive indices of core & cladding
nd=0.03;                           //difference of refractive indices of core & cladding
NA=sqrt(ns*nd)                     //numerical apperture
printf("The numerical apperture for the optical fibre is %f",NA);