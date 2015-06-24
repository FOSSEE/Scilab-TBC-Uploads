clc;
clear;
printf("\t\t\tChapter11_example4\n\n\n");
// Determination of the percentage of total emitted energy that lies in the visible range. 
T=2800;
lambda1=4e-7;
lambda2=7e-7;
hT=lambda1*T;
lambdaT=lambda2*T;
printf("\nhT=%.2e m.K and lambda2_T=%.2e m.K",hT,lambdaT);
I1=0.0051; //Fraction of Total Radiation Emitted for lower Wavelength-Temperature Product from Table 11.1
I2=0.065; //Fraction of Total Radiation Emitted for upper Wavelength-Temperature Product from Table 11.1
dI=I2-I1;
printf("\nThe percentage of total emitted energy that lies in the visible range is %.1f percent",dI*100);
