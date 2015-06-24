clc();
clear;
//To calculate the wavelength of second spectral line
n=1;
lambda1=450*10^-7;                   //wavelength of first spectral line
d=1/5000;
teta1=asind((n*lambda1)/d);
teta2=teta1+2.97;
lambda2=((d*sind(teta2))/n)*10^7    //wavelength of second spectral line
printf("The wavelength of second spectral line is %f nm",lambda2);