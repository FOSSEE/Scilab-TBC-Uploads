clc();
clear;
//To determine the width of the slit
n=1;
lambda=600*10^-9;                 //wavelength
teta=35;                          //angle at which first minimum falls
d=((n*lambda)/sind(35))*10^6      //width of the slit
printf("The width of the slit is %f micro m",d);