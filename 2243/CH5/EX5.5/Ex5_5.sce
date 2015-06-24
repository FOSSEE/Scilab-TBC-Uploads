clc();
clear;
//Given:
r = 90; // in degrees
mu_o= 1.658 ;// Refractive index for ordinary array
mu =1.55; // Refractive index for a canada balsam material
//Snell's Law,mu1*sin(i) = mu2*sin(r), we have :
i = asind((mu*sind(90))/mu_o); // angle in degrees
printf("Critical angle =  %d degrees",i);

