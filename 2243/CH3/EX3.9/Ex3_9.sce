clc();
clear;
//Given :
mu = 1.4;// refractive index of a thin film
lambda = 5890; // Wavelength of sodium light in A
deltalambda = 20; //line width in A
// For observing interference pattern, t < lambda^2/(2*mu*deltalambda)
t_max = lambda^2/(2*mu*deltalambda); //thickness of the film in A
printf(" t_max : %1.3f x 10^5 A \n\n",t_max*10^-5);



