//Example number 12.3, Page number 264

clc;clear;
close;

//Variable declaration
n1=1.55;          //Core refractive index
n2=1.50;          //Cladding refractive index
//Calculation
NA=sqrt(n1**2-n2**2);    //numerical aperture
//Result
printf("numerical aperture is %.2f",NA)
