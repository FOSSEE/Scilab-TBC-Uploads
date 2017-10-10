//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 1.2
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given 
n=4;//number of sources
//Let 'I' be the intensity of the sources

//Case (1) :
//For coherent sources
mprintf("Maximum irradiance due to superposition of %d coherent sources Imax= %dI",n,n^2);

//Case (2) :
//For incoherent sources
mprintf("\n Maximum irradiance due to superposition of %d incoherent sources Imax= %dI",n,n);
