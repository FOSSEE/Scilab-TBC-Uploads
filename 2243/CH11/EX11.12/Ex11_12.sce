clc();
clear;
//Given :
Eg = 1.1;// Energy gap in eV
T1 = 300 ;// Temperature in K
T2 = 473; // Temperature in K (273+ 200 = 473 K)
k = 8.62*10^-5 ; // in eV
// sigma = A*exp(-Eg/(2*k*T))
//Ratio = sigma_473/sigma_300
Ratio = exp((-Eg/(2*k))*((1/T2)-(1/T1)));
printf("Thus, sigma_473 is  %d  times  sigma_300",Ratio);
