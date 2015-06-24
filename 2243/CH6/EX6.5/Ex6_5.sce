clc();
clear;
//Given :
ME = 35*10^3 ; //Maximum energy in eV
theta = %pi; // photon is backscattered
h = 6.625*10^-34; //planck's constant in Js
m0 = 9.1*10^-31; //electron mass in Kg
c = 3*10^8; //Speed of light in m/s
deltalambda = (h*(1-cos(theta)))/(m0*c); // in A
// (h*c/lambda) - (h*c/lambda') = 35 KeV   or  (deltalambda/lambda*lambda1) = (35 KeV/h*c)
//Simplifying the above Equation , we will obtain : lambda^2 + 0.048 lambda - 0.017
//Roots of the quadratic equation are :
values = [-0.017,0.048,1]; // a,b,c values of the quadratic equation
equation = poly(values,'lamb','coeff'); //quadratic  equation 
r = roots(equation); //Roots of the final equation
printf("Incident photon wavelength in Compton scattering is %.2f A",r(2));




