//Example number 8.2, Page number 8.17

clc;clear;close

// Variable declaration
F_500=1*10**-10 //unitless
k=poly([0],'k')
T1=500+273 // in K
T2=1000+273 // in K


// Calculations
lnx=log(F_500)*T1/T2; // vacancies
x=exp(lnx) //Fraction of vacancies

printf("Fraction of vacancies at 1000 degrees C = %.1e",x)
