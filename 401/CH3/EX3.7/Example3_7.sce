//Example 3.7
//Program to estimate rms pulse broadening per kilometer for the fiber

clear;
clc ;
close ;

//Given data
lambda=0.85*10^(-6);    //metre - WAVELENGTH
L=1;                    //km - DISTANCE
MD=0.025;//MATERIAL DISPERSION = mod(lamda^2*[del^2(n1)/del(lamda)^2) 
c=2.998*10^8;           //m/s - VELOCITY OF LIGHT IN VACCUM
sigma_lambda_by_lambda=0.0012;// sigma_lambda/lambda

//Material Dispersion Parameter
M=MD/(lambda*c);

//R.M.S. Spectral Width
sigma_lambda=sigma_lambda_by_lambda*lambda;

//R.M.S. pulse broadening per kilometer
sigma_m=sigma_lambda*L*M;

//Displaying the Result in Command Window
printf("\n\n\t R.M.S. pulse broadening per kilometer is %0.2f ns/km.",sigma_m/10^(-12));