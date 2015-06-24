clc();
clear;
//Given :
L =8;// in cm
lambda = 5330; //wavelength in A
// lambda = 2*L/n
// 1 A = 1.0*10^-8 cm
n= (2*L)/(lambda*10^-8); // allowed modes
//adjacent mode 
n1 = round(n+1);
// 1 cm = 1.0*10^8 A
lambda1 = ((2*L)/n1)*10^8;// wavelength in A
D = lambda-lambda1; // difference in wavelengths in A
printf("Difference = %.3f A",D);
