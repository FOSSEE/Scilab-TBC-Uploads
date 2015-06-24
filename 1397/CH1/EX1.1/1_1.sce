//clc();
clear;
// To calculate the intensity ratio of bright and dark fringes
I1=1;
I2=25;
// Intensity is directly proportional to square of the amplitude
A1=sqrt(I1);
A2=sqrt(I2);
Imax=(A1+A2)^2;
Imin=(A1-A2)^2;
I=Imax/Imin;
printf("The intensity ratio of bright and dark fringes is %f",I);

