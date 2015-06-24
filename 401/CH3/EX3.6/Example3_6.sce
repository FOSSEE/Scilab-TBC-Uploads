//Example 3.6
//Program to estimate Material dispersion parameter and rms pulse 
//broadening per kilometer
clear;
clc ;
close ;

//Given data
lambda=0.85*10^(-6);    //metre - WAVELENGTH
L=1;                    //km - DISTANCE
MD=0.025;//MATERIAL DISPERSION = mod(lamda^2*[del^2(n1)/del(lamda)^2) 
c=2.998*10^8;           //m/s - VELOCITY OF LIGHT IN VACCUM
sigma_lambda=20*10^(-9);//metre - RMS SPECTRAL WIDTH 

//Material Dispersion Parameter
M=MD/(lambda*c);

//R.M.S. pulse broadening per kilometer
sigma_m=sigma_lambda*L*M;

//Displaying the Results in Command Window
printf("\n\n\t Material Dispersion Parameter is %0.1f ps/nm/km.",M*10^6);
printf("\n\n\t R.M.S. pulse broadening per kilometer is %0.2f ns/km.",sigma_m/10^(-12));