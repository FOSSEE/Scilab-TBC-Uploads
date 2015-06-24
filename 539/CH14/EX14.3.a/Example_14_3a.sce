//Computations of Diffusion Flux of Carbon dioxide through Plasic Beverage Container

clear;
clc;

function[A]= approx(V,n)
    A= round(V*10^n)/10^n;
    funcprot(0)
endfunction

printf("\tExample 14.3\n");

printf("\n\tPart A");
P1=400000; // in Pa  Pressure inside the bottle
P2=400;  // in Pa  Pressure outside the bottle
Pm=0.23*10^-13;  //Solubility Coefficient
dx=0.05;  // in cm Thickness of wall

J=approx(-Pm*(P2-P1)/dx,8);
printf("\nDiffusion flux is : %.2f * 10 ^ -6 ",J/10^-6);
printf("cm^3 STP/cm^2-s\n");

//End