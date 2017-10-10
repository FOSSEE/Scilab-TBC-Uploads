//Example 1_35
clc();
clear;
//To calculate the intensity ratio of the bright and dark fringes
I1=1
I2=25
A1=sqrt(I1)
A2=sqrt(I2)
Imax=(A1+A2)^2
Imin=(A2-A1)^2
printf("The intensity ratio is \n\t Imax:Imin %d:%d",Imax,Imin)
