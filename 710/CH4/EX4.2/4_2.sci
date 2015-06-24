clc();
clear;
//To calculate the thickness of the air film
lambda1=400*10^-9;                //wavelength 1
lambda2=600*10^-9;                //wavelength 2
//2*t=n*lambda
n=150;                            //since 600*n=(n+75)400
t=((n*lambda2)/2)*10^6
printf("The thickness of the air film is %d micro meter",t);

