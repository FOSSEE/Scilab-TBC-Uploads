//Example number 12.9, Page number 266

clc;clear;
close;

//Variable declaration
n2=1.3;          //Cladding refractive index
delta=0.140;    //fractional index change
//Calculation
n1=n2/(1-delta);     //Core refractive index
//Result
printf("refractive index of core is %.2f",n1)
