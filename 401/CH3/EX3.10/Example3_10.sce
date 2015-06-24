//Example 3.10
//Program to estimate
//(a)RMS pulse broadening per kilometer
//(b)Bandwidth-Length product for the fiber

clear;
clc ;
close ;

//Given data
NA=0.3 ;         //NUMERICAL APERTURE
n1=1.45;         //CORE REFRACTIVE INDEX 
M=250*10^(-6);   //s/km^2 - MATERIAL DISPERSION PARAMETER 
sigma_lambda=50*10^(-9); //metre - RMS SPECTRAL WIDTH
L=1;             //km - LENGTH OF OPTICAL LINK
c=2.998*10^8;    //m/s - VELOCITY OF LIGHT IN VACCUM

//RMS pulse broadening /km due to material dispersion
sigma_m=sigma_lambda*L*M;

//RMS pulse broadening /km due to intermodal dispersion
sigma_s=L*NA^2/(4*sqrt(3)*n1*c);

//(a)Total RMS pulse broadening /km
sigma_t=sqrt(sigma_m^2+sigma_s^2);

//(b)Bandwidth-Length product
BoptXL=0.2/sigma_t;

//Displaying the Results in Command Window
printf("\n\n\t Total RMS pulse broadening per kilometer is %0.1f ns/km.",sigma_t/10^(-12));
printf("\n\n\t Bandwidth-Length product is %0.1f MHz km.",BoptXL/10^(9));