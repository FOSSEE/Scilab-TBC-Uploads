//Example 7.3
//Program to calculate the:
//(a)Coupling Efficieny
//(b)Optical loss in decibels relative to Pe
//(c)Optical loss in decibels relative to Pint

clear;
clc ;
close ;

//Given data
NA=0.2;                  //NUMERICAL APERTURE
F=0.68;                  //TRANSMISSION FACTOR
n=1;
nx=3.6;                  //REFRACTIVE INDEX OF GaAs

//(a)Coupling Efficieny
eeta_c=(NA)^2;

//(b)Optical loss in decibels relative to Pe
Loss1=-10*log10(eeta_c);

//Percentage optical power emitted
Pint_by_P=F*n^2/(4*nx^2);

//(c)Optical loss in decibels relative to Pint
Loss2=-10*log10(eeta_c*Pint_by_P);

//Displaying the Results in Command Window
printf("\n\n\t (a)Coupling Efficieny is %1.0f percent.",eeta_c*100);
printf("\n\n\t (b)Optical loss in decibels relative to Pe is %0.1f dB.",Loss1);
printf("\n\n\t (c)Optical loss in decibels relative to Pint is %0.1f dB.",Loss2);