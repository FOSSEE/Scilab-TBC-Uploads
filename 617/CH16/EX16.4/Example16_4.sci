clc();
clear;

// To compute the hydrogen loss per unit pipe by diffusion

ri=3/96;                            // Inner radius of pipe in ft
ro=1/24;                            // Outer radius of pipe in ft
Ca1=0.0003;                         // Concentration at the inner hose of pipe in lb-mol/ft^2
Ca2=0;                              // Concentration at the outer surface
D=0.7*10^-5;                        // Diffusion coefficient of hydrogen in rubber in ft^2/hr
N=2*%pi*D*(Ca1-Ca2)/log(ro/ri);     // Rate of diffusion in lb-mol/hr
printf("The rate of diffusion iof hydrogen in rubber is %.2f*10^-8 lb-mole/hr",N*10^8);