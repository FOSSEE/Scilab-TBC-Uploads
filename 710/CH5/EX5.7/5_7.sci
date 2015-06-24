clc();
clear;
//To calculate the angle at which first minimum will be observed
n=1;
lambda=650*10^-9;                       //wavelength
d=2*10^-6;                              //widthof hte slit
teta=asind((n*lambda)/d)                //angle at which first minimum will be observed
printf("The angle at which first minimum will be observed is %f",teta);
